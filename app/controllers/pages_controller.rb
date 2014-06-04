class PagesController < ApplicationController
	  def create
	    @chapter = Chapter.find(params[:chapter_id])
	    @page = @chapter.pages.create(page_params)
	    redirect_to chapter_path(@chapter)
	  end
	   def destroy
	    @chapter = Chapter.find(params[:chapter_id])
	    @page = @chapter.pages.find(params[:id])	    
	    @page.destroy
	     redirect_to chapter_path(@chapter)
	  end
	 
	  private
	    def page_params
	      params.require(:page).permit(:page_audio, :page_text,:chapter_id, :admin_id)
	    end
end
