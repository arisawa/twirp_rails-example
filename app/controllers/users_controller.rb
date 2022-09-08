class UsersController < TwirpRailsController
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

    raise ActiveRecord::RecordNotFound unless user

    user
  end
end
