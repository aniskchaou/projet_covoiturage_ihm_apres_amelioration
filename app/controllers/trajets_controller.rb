class TrajetsController < ApplicationController
  def index
    @trajets=Trajet.all
    @reservations=Reservation.all
    @villes=Ville.all
  end

  def new
    @voitures=Voiture.all
    @membres=Membre.all
    @villes=Ville.all
    @trajet=Trajet.new()
  end

  def create
   @trajet = Trajet.new(trajets_params)
    flash[:msg] = "trajet est ajouté avec succés"
   if @trajet.save
    redirect_to :action => 'index'

  end

end

def show
  @trajet=Trajet.find(params[:id])
  @ville_source=Ville.find(@trajet.id_ville_source)
  @ville_destiantion=Ville.find(@trajet.id_ville_destination)
  @voiture=Voiture.find(@trajet.id_voiture)
  @conducteur=Membre.find(@trajet.id_conducteur)
  @reservations=Reservation.all
  @membres=Membre.all
  
end

def edit
 @trajet = Trajet.find(params[:id])
 @membres=Membre.all
 @voitures=Voiture.all
 @villes=Ville.all
end

def update
  @trajet = Trajet.find(params[:id])
  if @trajet.update_attributes(trajets_params)
    flash[:msg] = "trajet est modifié avec succés"
    redirect_to :action => 'show', :id => @trajet
  end
end

def delete
  Trajet.find(params[:id]).destroy
  flash[:msg] = "trajet est supprimé avec succés"
  redirect_to :action => 'index'
end

def trajets_params
  params.require(:trajets).permit(:id_conducteur, :id_voiture, :id_ville_source, :id_ville_destination,:date,:nbr_place,:prix)
end

def reservations_params
  params.require(:trajets).permit(:id_membre, :id_trajet, :place_res)
end

def search
  @villes=Ville.all

end
def reservation
  @reservation = Reservation.new(reservations_params)
  @trajets=Trajet.find(params[:trajets][:id_trajet])
  @nbr_place=@trajets.nbr_place-params[:trajets][:place_res].to_f
  Trajet.update(@trajets.id,:nbr_place=>@nbr_place)
  if @reservation.save
    flash[:msg] = "reservation est effectué avec succés"
    redirect_to :action => 'index'
  end
end  
def recherche

  if params[:trajets]
    @trajets = Trajet.search(params[:trajets][:search1],params[:trajets][:search2]).all
    @voitures=Voiture.all
    @avis=Avi.all
    @villes=Ville.all
    @conducteurs=Conducteur.all
    @membres=Membre.all

  else
    @trajets = Trajet.all.order('created_at DESC')
  end

end

def list_reservation
  @reservations=Reservation.all
  @membres=Membre.all
end

def delete_reservation
   @reservation=Reservation.find(params[:id])
   @trajet=Trajet.find(@reservation.id_trajet)
  @nbr_place=@trajet.nbr_place+@reservation.place_res.to_f
  Trajet.update(@trajet.id,:nbr_place=>@nbr_place)

   Reservation.find(params[:id]).destroy
  flash[:msg] = "reservation est annulé avec succés"
  redirect_to :action => 'list_reservation'
end



end
