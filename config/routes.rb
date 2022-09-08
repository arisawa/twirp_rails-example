Rails.application.routes.draw do
  get '/hello' => HelloController.action(:hello)
end
