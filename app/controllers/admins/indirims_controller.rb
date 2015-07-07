class Admins::IndirimsController < Admins::BaseController

def index
 @indirim=Indirim.new
 if(params[:format]=="talep")
   @indirims = Indirim.where(["tur= ? ","Degerlendirme"]).all
   @indirim.tur="Degerlendirme"
 elsif (params[:format]=="konsul")
   @indirims = Indirim.where(["tur= ?","Konsultasyon"]).all
   @indirim.tur="Konsultasyon"
 elsif (params[:format]=="tum")
   @indirims = Indirim.all
   @indirim.tur="Tum"
 else
   @indirims = Indirim.all
   @indirim.tur="Tum"

 end

end
def new
  @indirim=Indirim.new
end

def create
  @param=params[:indirim]
  aralik=@param[:aralik].to_i
  bolum=100/aralik
  kalan=100%aralik
  toplam=0
  for i in 1..aralik
      @indirim = Indirim.new
      @indirim.tur=@param[:tur]
      if kalan!=0
        toplam=toplam+(bolum+kalan)
        @indirim.aralik=toplam
        kalan=kalan-1
      else kalan=0
        toplam=toplam+bolum
        @indirim.aralik=toplam
      end
      @indirim.oran=0
      @indirim.save
  end
  redirect_to admins_indirims_path

end

def destroy
  @tur=params[:format]
  if(@tur=="Degerlendirme" )
    @indirims = Indirim.where(["tur= ? ","Degerlendirme"]).all
  elsif (@tur=="Konsultasyon" )
     @indirims = Indirim.where(["tur= ? ","Konsultasyon"]).all
  else
    @indirims = Indirim.all
  end
  for i in 0..@indirims.count-1
    @indirim=@indirims[i]
    @indirim.destroy
  end
  redirect_to admins_indirims_path
end


def edit
  @indirim=Indirim.find(params[:id])
end

def update
  @indirim=Indirim.find params[:id]
  @indirim.update(oran_params)
  redirect_to admins_indirims_path
end

def indirim_params
  params.require(:indirim).permit(:tur, :aralik,:oran)
end
def oran_params
  params.require(:indirim).permit(:id,:oran)
end
end
