defmodule ComicBaker.Router do
  use Phoenix.Router

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", ComicBaker.MainController, :main
    
    get "/library", ComicBaker.ReaderController, :library
    post "/library", ComicBaker.ReaderController, :upload
    
    get "/library/book/:id/page/:img", ComicBaker.ReaderController, :page
    get "/library/book/:id/pages", ComicBaker.ReaderController, :page_urls
    get "/library/book/:id/cover", ComicBaker.ReaderController, :cover
    
    get "/library/book/:id/read", ComicBaker.ReaderController, :read
    
    get "/signup", ComicBaker.UserController, :get_signup
    post "/signup", ComicBaker.UserController, :post_signup
    
    get "/login", ComicBaker.UserController, :get_login
    post "/login", ComicBaker.UserController, :post_login
    
    #get "/upload_test", ComicBaker.UserController, :upload_test
    #post "/upload_test", ComicBaker.UserController, :upload_test
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
