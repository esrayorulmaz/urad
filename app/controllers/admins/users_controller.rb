class Admins::UsersController < Admins::BaseController
  def index
    @users = User.where("tur=?","instution").all
    @user = User.new
  end
  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find params[:id]
    @user.update(kurum_params)
    redirect_to admins_users_path
  end
  def kurum_params
    params.require(:user).permit(:id,:indirim)
  end
end