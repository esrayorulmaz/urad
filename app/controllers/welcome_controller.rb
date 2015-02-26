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
          render '/instutions/index'
        end
        if current_user.tur=='radiologist'
          render '/radiologists/index'
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
