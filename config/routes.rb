Rails.application.routes.draw do
  get '/hello' => HelloController.action(:hello)

  scope :twirp do
    twirp Example::V1::UserApiService, controller: 'users'
  end
end
