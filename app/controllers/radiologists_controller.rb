class RadiologistsController < ApplicationController

  def index
   
  end
  def konsultasyon

  end

  def maliyet

  end

  def talep

  end

  def havuz
    @user = User.where(["id= ?",current_user.id]).first
    @imagetaleps=Imagetalep.where(["image_tur=? and unvan=? and durum=?",@user.uzmnlk, @user.unvn, "Havuz"]).all
  end

end
