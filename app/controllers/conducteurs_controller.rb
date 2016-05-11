class ConducteursController < ApplicationController
  def index
    @conducteurs=Conducteur.all
  end

  def new
    @conducteur=Conducteur.new
    @membres=Membre.all
  end

  def create
    @conducteur=Conducteur.new(conducteur_params)
    if @conducteur.save
      redirect_to :action => 'index'
    end  
  end

  def show
    @conducteur=Conducteur.find(params[:id])
  end

  def edit
    @conducteur = Conducteur.find(params[:id])
    @membres=Membre.all
  end

  def update
    @conducteur = Conducteur.find(params[:id])
    if @conducteur.update_attributes(conducteur_param)
      redirect_to :action => 'show', :id => @conducteur
    end
  end

  def delete
    Conducteur.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def conducteur_params
    params.require(:conducteurs).permit(:idMembre, :grade)
  end

  def conducteur_param
    params.require(:conducteur).permit(:idMembre, :grade)
  end


end
