class Radiologists::ImagetalepsController <Radiologists::BaseController
  before_action :set_imagetalep, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imagetaleps = Imagetalep.where(["user_id= ?",current_user.id]).all
  end

  def show
    respond_with(@imagetalep)
  end




  def kabul
    @imagetalep = Imagetalep.find(params[:imagetalep_id])
    @imagetalep.durum="Kabul"
    @imagetalep.save

    redirect_to :back
  end

  def destroy
    @imagetalep.destroy
    respond_with(@imagetalep)
  end

  def update_radyologlist
    if (params[:unvan]).nil? && (params[:uzmnlk]).nil?
      @imagetalep.users = User.where( tur: 'radiologist', unvan: params[:unvan],uzmnlk:params[:uzmnlk] ).all.map{ |u| [u.nameSurname] }
    elsif (params[:unvan]).nil?
      @imagetalep.users = User.where(tur: 'radiologist', unvan: params[:unvan]).all.map { |u| [u.nameSurname] }
    elsif (params[:uzmanlk]).nil?
      @imagetalep.users = User.where(tur: 'radiologist', unvan: params[:uzmnlk]).all.map { |u| [u.nameSurname] }
    end
    redirect_to :back
  end

  private
    def set_imagetalep
      @imagetalep = Imagetalep.find(params[:id])
    end

    def imagetalep_params
      params.require(:imagetalep).permit(:gonderen_tc, :gonderen_name, :gonderen_mail, :image_tur,:image,:hastatc, :unvan,:hastaname, :hastacinsiyet, :hastayasi,:picture,:user_id)
    end
end
