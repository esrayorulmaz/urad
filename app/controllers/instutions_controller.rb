class InstutionsController < ApplicationController


  def raporlar
    @imagetaleps = Imagetalep.where(["gonderen_mail=? and durum=?",current_user.email,"Onay"]).all
  end

end