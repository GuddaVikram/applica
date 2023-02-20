class AuthorController < ApplicationController
    protect_from_forgery with: :null_session
   
    def createauthor
        render json: Author.create(name: params[:name], age: params[:age], address: params[:address]).valid?
    end

    def getauthor
    render json: Author.all
    end

    def editauthor
        author = Author.find_by(id: params[:id])
        render json: author.update(name: params[:name], age: params[:age], address: params[:address])     
    end
    def deleteauthor
        author = Author.find_by(id: params[:id])
        render json: author.destroy
    end

end
