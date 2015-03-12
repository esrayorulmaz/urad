class Admins::BaseController < ActionController::Base
  before_action :authenticate_user!
end
