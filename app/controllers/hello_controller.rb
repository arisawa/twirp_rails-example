class HelloController < ActionController::API
  def hello
    render json: { hello: :world }.to_json
  end
end
