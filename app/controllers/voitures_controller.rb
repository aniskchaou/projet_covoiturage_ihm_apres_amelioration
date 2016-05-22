class VoituresController < ApplicationController
  def index
    @voitures=Voiture.all
  end

  def new
    @voiture=Voiture.new()
    
  end

  def create
    @voiture = Voiture.new(voitures_params)
    if @voiture.save
      flash[:msg] = "voiture est ajouté avec succés"
      redirect_to :controller=>'trajets' ,:action => 'new'

    end

  end

  def show
    @voiture = Voiture.find(params[:id])
  end

  def edit
    @voiture = Voiture.find(params[:id])
  end

  def update
     @voiture = Voiture.find(params[:id])
    if @voiture.update_attributes(voiture_params)
      flash[:msg] = "voiture est modifié"
      redirect_to :action => 'show', :id => @voiture
    end
  end

  def delete
    Voiture.find(params[:id]).destroy
    flash[:msg] = "voiture est supprimé avec succés"
    redirect_to :action => 'index'
  end
  def voitures_params
    params.require(:voitures).permit(:nb_place, :marque, :couleur, :matricule)
  end

  def voiture_params
    params.require(:voiture).permit(:nb_place, :marque, :couleur, :matricule)
  end
end
