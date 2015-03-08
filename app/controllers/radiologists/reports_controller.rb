class Radiologists::ReportsController < Radiologists::BaseController
  before_action :set_reports, only: [ :edit, :update, :destroy]

  respond_to :html, :js, :pdf

  $imagetalepid=0

  def index
    @reports = Report.all
  end

  def show

    if Report.where(["imagetalep_id=?",params[:id].to_i]).first==nil
      @report = Report.new
      $imagetalepid=params[:id].to_i
      render 'new'
    else
      @report=Report.where(["imagetalep_id=?", params[:id].to_i]).first
       if(params[:format]=="pdf")
         respond_to do |format|
           format.pdf do
             render :pdf => "reports",
                    :template => 'radiologists/reports/show.html.slim',
                    :layout => "/layouts/show.pdf.slim",
                    :encoding  => 'utf8'
           end
         end
       end
    end
  end

  def reports_pdf
    @report=Report.where(["imagetalep_id=?",params[:id].to_i]).first
    @reprt.saave
    respond_to do |format|
      format.pdf do
        render :pdf => "reports",
               :template => 'radiologists/reports/show.html.slim',
               :layout => "/layouts/show.pdf.slim",
               :encoding  => 'utf8'
      end
    end

  end
  def new


  end

  def create
    @report = Report.new(reports_params)
    @report.imagetalep_id=$imagetalepid


    @imagetalep=Imagetalep.find($imagetalepid)
    @imagetalep.durum="Rapor"

    @report.save

    @imagetalep.save

    redirect_to radiologists_imagetaleps_path
  end

  def edit

  end

  def update

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
    params.require(:report).permit(:title, :content, :result, :imagetaleps_id)
  end

end