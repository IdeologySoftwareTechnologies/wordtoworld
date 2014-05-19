class AudiosController < ApplicationController

	  before_action :authenticate_admin!



  def create
      @album = Album.find(params[:album_id])
      @audio =@album.audio.create(audio_params)
      redirect_to album_path(@album), notice: 'Audio was successfully created.'      
  end



  def destroy
      @album = Album.find(params[:album_id])
      @audio = @album.audio.find(params[:id])
      @audio.destroy   
      redirect_to album_path(@album) 
  end



  private
    def audio_params
      params.require(:audio).permit(:title, :audio_file,:album_id, :admin_id)
    end
end
