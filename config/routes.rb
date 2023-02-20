Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/books", to: "book#getbook" 

  post "/books", to: "book#postbook"

  put "/books/:id", to: "book#putbook"

  delete "/books/:id", to: "book#deletebook"

  get "/books/:id", to: "book#getbooksbyauthor"

  get "/books/genre/:gen", to: "book#getbygenre"

  get "/books/price/:min/:max", to: "book#getprice"

  get "/books/date/:min/:max", to: "book#getdate"

  get "/books/page/:id", to: "book#pagination"

  post "/author", to: "author#createauthor"
  get "/author", to: "author#getauthor"
  put "/author/:id", to: "author#editauthor"
  


end
