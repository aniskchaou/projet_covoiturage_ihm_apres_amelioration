class AvisController < ApplicationController
  def index
    @avis=Avi.all
  end

  def new
    @avi=Avi.new()
  end

  def create
   @avi = Avi.new(avi_params)
   if @avi.save
    redirect_to :action => 'index'
   end
  end

  def show
    @avis=Avi.find(params[:id])
  end

  def edit
    @avis = Avi.find(params[:id])
    
  end

  def update
    @avis = Avi.find(params[:id])
    if @avis.update_attributes(avi_params)
      redirect_to :action => 'show', :id => @avis
    end
  end

  def delete
    Avi.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def avi_params
    params.require(:avis).permit(:date, :commentaire)
  end
end
