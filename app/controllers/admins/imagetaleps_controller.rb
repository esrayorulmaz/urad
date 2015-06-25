class Admins::ImagetalepsController <Admins::BaseController
  before_action :set_imagetalep, only: [:show,:gecmis,:update]

  respond_to :html

  def index
    @imagetalep=Imagetalep.new
    if(params[:format]=="Rapor")
      @imagetaleps = Imagetalep.where(["durum= ? or durum=?","Rapor","Red"]).all
      @imagetalep.durum="Rapor"
    elsif (params[:format]=="Onay")
      @imagetaleps = Imagetalep.where(["durum= ?","Onay"]).all
      @imagetalep.durum="Onay"
    elsif (params[:format]=="Tum")
      @imagetaleps = Imagetalep.where(["durum= ? or durum=?","Onay","Rapor"]).all
      @imagetalep.durum="Tum"

    end

  end

  def gecmis
    @taleparsivs= Taleparsiv.where("imagetalep_id=?",@imagetalep.id).all
    @imagetalep
  end

  def show
    respond_with(@imagetalep)
  end

  def onayla
    @imagetalep = Imagetalep.find(params[:id])
    @report=@imagetalep.report
    @report.onaylayan=current_user.id
    @report.save
    @imagetalep.durum="Onay"
    @imagetalep.save

    redirect_to :back
  end


  def edit
    @imagetalep = Imagetalep.find(params[:id])
  end

  def reddet
    @imagetalep = Imagetalep.find(params[:id])
    redirect_to edit_admins_imagetalep_path
  end



  def update

      @imagetalep = Imagetalep.find(params[:id])
      @taleparsiv=Taleparsiv.new
      @taleparsiv.user_id=@imagetalep.user_id
      @taleparsiv.rapor_id=@imagetalep.report_id
      @imagetalep.taleparsiv<< @taleparsiv
      @taleparsiv.save



      @imagetalep.report_id=nil
      @id=params.require(:imagetalep).permit(:user_id,:durum)
      if(@id[:durum]=="0")
        @imagetalep.user_id= @id[:user_id]
        @imagetalep.durum="Talep"
      elsif(@id[:durum]=="1")
        @imagetalep.user_id=nil
        @imagetalep.durum="Havuz"
      end
      @imagetalep.save

    redirect_to admins_imagetaleps_path(:format => 'Rapor')
  end

  private
    def set_imagetalep
      @imagetalep = Imagetalep.find(params[:id])
    end
  def imagetalep_params
    params.require(:imagetalep).permit(:user_id,:durum)
  end
end
