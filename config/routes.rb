Rails.application.routes.draw do
  post '/list_users' => UsersController.action(:list_users)
  post '/get_user' => UsersController.action(:get_user)
end
