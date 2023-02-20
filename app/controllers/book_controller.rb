class BookController < ApplicationController
    # protect_from_forgery with: :null_session
    protect_from_forgery with: :null_session
    def getbook
    render json: Book.all.order(created_at: :desc)
    end
    def postbook
        puts params[:name]
        puts "hello"
        # render json: Book.create(name: params[:name], date_publish: params[:date_publish], no_of_pages: params[:no_of_pages], price: params[:price], genre: params[:genre], author_id: params[:author_id])
        render json: Book.create(name: params[:name], no_of_pages: params[:no_of_pages], date_publish: params[:date_publish], genre: params[:genre], price: params[:price], author_id: params[:author_id])
    end

    def putbook
        book = Book.find_by(id: params[:id])
        render json: book.update(name: params[:name], no_of_pages: params[:no_of_pages], date_publish: params[:date_publish], genre: params[:genre], price: params[:price], author_id: params[:author_id])
         
    end

    def deletebook
        
        book = Book.find_by(id: params[:id])
        book.destroy
        
    end

    def getbooksbyauthor
        render json: Book.where(author_id: params[:id]).order(created_at: :desc)


    end

    def getbygenre
        render json: Book.where(genre: params[:gen]).order(created_at: :desc)
        
    end

    def getprice
        render json: Book.where(price: params[:min]..params[:max]).order(price: :desc)

    end

    def getdate
        render json: Book.where(date_publish: params[:min]..params[:max]).order(date_publish: :desc)

    end

    def pagination
        render json: Book.paginate(:page => params[:id], :per_page => 5).order(created_at: :desc)
    end


end
