Rails3UjsDemo::Application.routes.draw do
  # Recurso de posts y commentarios
  #     post_comments GET    /posts/:post_id/comments(.:format)          {:action=>"index", :controller=>"comments"}
  #                   POST   /posts/:post_id/comments(.:format)          {:action=>"create", :controller=>"comments"}
  #  new_post_comment GET    /posts/:post_id/comments/new(.:format)      {:action=>"new", :controller=>"comments"}
  # edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) {:action=>"edit", :controller=>"comments"}
  #      post_comment GET    /posts/:post_id/comments/:id(.:format)      {:action=>"show", :controller=>"comments"}
  #                   PUT    /posts/:post_id/comments/:id(.:format)      {:action=>"update", :controller=>"comments"}
  #                   DELETE /posts/:post_id/comments/:id(.:format)      {:action=>"destroy", :controller=>"comments"}
  #             posts GET    /posts(.:format)                            {:action=>"index", :controller=>"posts"}
  #                   POST   /posts(.:format)                            {:action=>"create", :controller=>"posts"}
  #          new_post GET    /posts/new(.:format)                        {:action=>"new", :controller=>"posts"}
  #         edit_post GET    /posts/:id/edit(.:format)                   {:action=>"edit", :controller=>"posts"}
  #              post GET    /posts/:id(.:format)                        {:action=>"show", :controller=>"posts"}
  #                   PUT    /posts/:id(.:format)                        {:action=>"update", :controller=>"posts"}
  #                   DELETE /posts/:id(.:format)                        {:action=>"destroy", :controller=>"posts"}
  #              root        /(.:format)                                 {:controller=>"posts", :action=>"index"}
  resources :posts do
    resources :comments
  end
  
  # Ruta raíz
  root :to => "posts#index"
end
