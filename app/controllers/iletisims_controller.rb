class IletisimsController < ApplicationController
  before_action :set_iletisim, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @iletisims = Iletisim.all
    respond_with(@iletisims)
  end

  def show
    respond_with(@iletisim)
  end

  def new
    @iletisim = Iletisim.new
    if(user_signed_in? &&current_user.email?)
      @iletisim.sender=current_user.email
    end
    respond_with(@iletisim)
  end

  def edit
  end

  def create
    @iletisim = Iletisim.new(iletisim_params)
    if(user_signed_in? &&current_user.email?)
      @iletisim.sender=current_user.email
    end
    @iletisim.save
    redirect_to root_path
  end

  def update
    @iletisim.update(iletisim_params)
    respond_with(@iletisim)
  end

  def destroy
    @iletisim.destroy
    respond_with(@iletisim)
  end

  private
    def set_iletisim
      @iletisim = Iletisim.find(params[:id])
    end

    def iletisim_params
      params.require(:iletisim).permit(:title, :content, :sender)
    end
end
