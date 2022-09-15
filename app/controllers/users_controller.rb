class UsersController < ApplicationController
  include TwirpRails::Controller

  before_action :authorize!

  USERS = [
    { id: 1, name: 'Anna' },
    { id: 2, name: 'Reina' },
    { id: 3, name: 'Poo' },
    { id: 4, name: 'Ninja' }
  ].freeze

  def list_users(_req, _env)
    { users: USERS }
  end

  def get_user(req, _env)
    user = USERS.find { |u| u[:id] == req.id }

    Rails.logger.info("current_user_name1: #{current_user_name}")
    Rails.logger.info("current_user_name2: #{current_user_name}")

    raise ActiveRecord::RecordNotFound unless user

    user
  end

  private

  def current_user_name
    @current_user_name ||= USERS.sample[:name]
  end

  def authorize!
    Rails.logger.info('--- authorized! ---')
  end
end
