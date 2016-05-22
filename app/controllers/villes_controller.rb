class VillesController < ApplicationController
  def index
    @villes=Ville.all
  end

  def new
    @ville=Ville.new();
  end

  def create

   @ville = Ville.new(villes_params)
   
   if @ville.save
    redirect_to :action => 'index'

  end

end

def show
  @ville=Ville.find(params[:id])
end

def edit
  @ville = Ville.find(params[:id])
end

def update
 @ville = Ville.find(params[:id])
 if @ville.update_attributes(ville_params)
  redirect_to :action => 'show', :id => @ville
end
end

def delete
  Ville.find(params[:id]).destroy
  redirect_to :action => 'index'
end

def villes_params
  params.require(:villes).permit(:nom_ville)
end

def ville_params
  params.require(:ville).permit(:nom_ville)
end
end
