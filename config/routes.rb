Rails.application.routes.draw do
  get '/hello' => HelloController.action(:hello)

  namespace :twirp do
    post 'example.v1.UserApi/ListUsers' => UsersController.action(:list_users)
    post 'example.v1.UserApi/GetUser' => UsersController.action(:get_user)
  end
end
