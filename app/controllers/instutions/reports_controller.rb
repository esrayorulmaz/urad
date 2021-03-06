class Instutions::ReportsController < Instutions::BaseController

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



end
