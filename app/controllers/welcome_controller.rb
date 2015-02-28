class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      if(current_user.aktif==true)
        if current_user.tur=='admin'
          render '/admins/index'
        end
        if current_user.tur=='teacher'
          render '/teachers/index'
        end
        if current_user.tur=='student'
          render '/students/index'
        end
        if current_user.tur=='instution'
          redirect_to instutions_main_path
        end
        if current_user.tur=='radiologist'
          redirect_to  radiologists_main_path
        end
      else
        render '/welcome/index'
      end
    else
      render '/welcome/index'
    end
  end
  def bloke

  end
end
