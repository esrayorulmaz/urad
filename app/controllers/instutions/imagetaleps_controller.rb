class Instutions::ImagetalepsController <Instutions::BaseController
  before_action :set_imagetalep, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imagetaleps = Imagetalep.where(["gonderen_mail= ?",current_user.email]).all

  end

  def show
    respond_with(@imagetalep)
  end

  def new
    @imagetalep = Imagetalep.new
    @user=User.first
    @imagetalep.durum="Talep"
  end

  def edit
  end



  def create
    @imagetalep = Imagetalep.new(imagetalep_params)
    if(user_signed_in?)
      @imagetalep.gonderen_tc=current_user.tc
      @imagetalep.gonderen_name=current_user.nameSurname
      @imagetalep.gonderen_mail=current_user.email
    end
    @imagetalep.durum="Talep"
    if @imagetalep.save
      redirect_to instutions_imagetaleps_path
    else
      render "new"
    end

  end

  def update
    @imagetalep.update(imagetalep_params)
    redirect_to instutions_imagetalep_path(@imagetalep)
  end

  def destroy
    @imagetalep.destroy
    redirect_to instutions_imagetaleps_path
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
