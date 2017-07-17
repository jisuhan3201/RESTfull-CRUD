Rails.application.routes.draw do
# Resource: posts
# resources 'posts'
# Method를 이용해서 이 Resource를 조작하는 방법을 아래에 기술할 것

get "/posts" => "posts#index" # 1. 우리가 쓴글을 다 볼 수 있는 페이지(Read)
post "/posts" => "posts#create" # 2. 새 글을 받는 페이지(Create)

get "/posts/new" => "posts#new" # 3. 새 글 쓰는 페이지(Read)

get "/posts/:id/edit" => "posts#edit", as: 'edit_post' # 4. 글을 수정하는 페이지

get "/posts/:id" => "posts#show", as: 'post' # 5. 특정 글을 보는 페이지(Read)
put "/posts/:id" => "posts#update" # 6. 수정한 글을 받아서 업데이트 해주는 곳(Update를 해주는 곳)
patch "/posts/:id" => "posts#update"# 6. 수정한 글을 받아서 업데이트 해주는 곳(Update를 해주는 곳)
delete "/posts/:id" => "posts#destroy" # 7. 특정 글을 삭제하는 페이지(Delete를 해주는 곳)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
