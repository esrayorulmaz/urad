class Sekreters::ImagetalepsController <Sekreters::BaseController
  before_action :set_imagetalep, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imagetaleps = Imagetalep.where(["sekreter_id= ?",current_user.id]).all
  end




  def kabul
    @imagetalep = Imagetalep.find(params[:imagetalep_id])

    redirect_to :back
  end
  def reddet
    @imagetalep = Imagetalep.find(params[:imagetalep_id])

    redirect_to :back
  end





  private
    def set_imagetalep
      @imagetalep = Imagetalep.find(params[:id])
    end

    def imagetalep_params
      params.require(:imagetalep).permit(:gonderen_tc, :gonderen_name, :gonderen_mail, :image_tur,:image,:hastatc, :unvan,:hastaname, :hastacinsiyet, :hastayasi,:picture,:user_id,:audiofile)
    end
end
