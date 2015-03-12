class Admins::ReportsController < Admins::BaseController

  respond_to :html, :js, :pdf

  $imagetalepid=0

  def show

    if Imagetalep.where(["id=?",params[:id].to_i]).first.report==nil
      @report = Report.new
      $imagetalepid=params[:id].to_i
      render 'new'
    else
      @imagetalep=Imagetalep.where(["id=?", params[:id].to_i]).first
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
  def arsivshow
      @taleparsiv=Taleparsiv.where(["id=?", params[:id].to_i]).first
      @imagetalep=Imagetalep.where(["id=?",@taleparsiv.imagetalep_id]).first
      @report=Report.where(["id=?",@taleparsiv.rapor_id]).first
      if(params[:format]=="pdf")
        respond_to do |format|
          format.pdf do
            render :pdf => "reports",
                   :template => 'admins/reports/arsivshow.html.slim',
                   :layout => "/layouts/arsivshow.pdf.slim",
                   :encoding  => 'utf8'
          end
        end
      end
    end


end
