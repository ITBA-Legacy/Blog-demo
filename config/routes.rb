Rails3UjsDemo::Application.routes.draw do
  # Recurso de posts
  #     posts GET    /posts(.:format)          {:action=>"index", :controller=>"posts"}
  #           POST   /posts(.:format)          {:action=>"create", :controller=>"posts"}
  #  new_post GET    /posts/new(.:format)      {:action=>"new", :controller=>"posts"}
  # edit_post GET    /posts/:id/edit(.:format) {:action=>"edit", :controller=>"posts"}
  #      post GET    /posts/:id(.:format)      {:action=>"show", :controller=>"posts"}
  #           PUT    /posts/:id(.:format)      {:action=>"update", :controller=>"posts"}
  #           DELETE /posts/:id(.:format)
  resources :posts
  
  # Ruta raíz
  root :to => "posts#index"
end
