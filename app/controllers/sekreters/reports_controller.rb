class Sekreters::ReportsController < Sekreters::BaseController
  before_action :set_reports, only: [ :edit, :update, :destroy]

  respond_to :html, :js, :pdf

  $imagetalepid=0

  def index
    @reports = Report.all
  end

  def show

    if Imagetalep.where(["id=?",params[:id].to_i]).first.report==nil
      @report = Report.new
      $imagetalepid=params[:id].to_i
      @imagetalep=Imagetalep.find($imagetalepid)
      render 'new'
    else
      @imagetalep=Imagetalep.where(["id=?", params[:id].to_i]).first
      if(params[:format]=="pdf")
        respond_to do |format|
          format.pdf do
            render :pdf => "reports",
                   :template => 'sekreters/reports/show.html.slim',
                   :layout => "/layouts/show.pdf.slim",
                   :encoding  => 'utf8'
          end
        end
      end
    end
  end


  def new


  end

  def create
    @report = Report.new(reports_params)
    @report.degerlendiren=current_user.id
    @report.imagetalep << Imagetalep.find($imagetalepid)

    @imagetalep=Imagetalep.find($imagetalepid)
    @imagetalep.durum="Rapor/Taslak"

    @report.save

    @imagetalep.save

    redirect_to sekreters_imagetaleps_path
  end

  def edit

  end

  def update

    @report.update(reports_params)
    redirect_to sekreters_imagetaleps_path
  end

  def destroy
    @report.destroy
    respond_with(@report)
  end



  private
  def set_reports
    @report = Report.find(params[:id])
  end
  def set_imagetalep
    @imagetalep = Imagetalep.find(params[:id])
  end
  def reports_params
    params.require(:report).permit(:title, :content, :result)
  end

end
