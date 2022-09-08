class TwirpRailsController < ActionController::API
  private

  def send_action(*)
    status, header, body = Example::V1::UserApiService.new(self).call(request.env)
    response.status = status
    response.header.merge(header)
    response.body = body
  end
end
