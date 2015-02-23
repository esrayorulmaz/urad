class ImagetalepsController < ApplicationController
  before_action :set_imagetalep, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imagetaleps = Imagetalep.where(["gonderen_mail= ?",current_user.email]).all
    respond_with(@imagetaleps)
  end

  def show
    respond_with(@imagetalep)
  end

  def new
    @imagetalep = Imagetalep.new
    respond_with(@imagetalep)
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
    @imagetalep.save
    respond_with(@imagetalep)
  end

  def update
    @imagetalep.update(imagetalep_params)
    respond_with(@imagetalep)
  end

  def destroy
    @imagetalep.destroy
    respond_with(@imagetalep)
  end

  private
    def set_imagetalep
      @imagetalep = Imagetalep.find(params[:id])
    end

    def imagetalep_params
      params.require(:imagetalep).permit(:gonderen_tc, :gonderen_name, :gonderen_mail, :image_tur,:image,:unvan,:hastatc, :hastaname, :hastacinsiyet, :hastayasi)
    end
end
