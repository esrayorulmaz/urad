class Admins::UcretsController < Admins::BaseController
def index
  @ucrets=Ucret.all
end

def new
  @ucret=Ucret.new
end
def create
  @ucret = Ucret.new(ucret_params)
  @ucret.save
  redirect_to admins_ucrets_path
end
def show

end

def edit
  @ucret=Ucret.find(params[:id])
end
def update
  @ucret=Ucret.find(params[:id])
  @ucret.update(ucret_params)
  redirect_to admins_ucrets_path
end

def destroy
  @ucret=Ucret.find(params[:id])
  @ucret.destroy
  redirect_to admins_ucrets_path
end

private
def ucret_params
  params.require(:ucret).permit(:atur, :tur, :fiyat)
end


end