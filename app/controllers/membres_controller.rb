class MembresController < ApplicationController
  def index
     @membres = Membre.all
  end

  def new
    @membres = Membre.new()
  end
  def connexion


  end  
  def login
    if params[:membres]
     @membres = Membre.search(params[:membres][:email],params[:membres][:mdp]).all
      if @membres.blank?
        flash[:msg] = "email ou mot de passe est incorrecte "
        redirect_to  :action => 'connexion'
      else
        session[:current_user_id] = @membres
        flash[:msg] = "bienvenue sur notre site "
        redirect_to :controller=>'trajets' ,:action => 'search'
      end

    end
  end  

  def create
    @membre = Membre.new(membre_params)
      
    if @membre.save
      @mem = Membre.search(params[:membres][:email],params[:membres][:mdp]).all
      session[:current_user_id] = @mem
      flash[:msg] = "bienvenue sur notre site"
      redirect_to :controller=>'trajets',:action => 'search'
    end
  end


  def show
   @membre=Membre.find(params[:id])
  end

  def edit
    @membre = Membre.find(params[:id])
  end

  def update
    @membre = Membre.find(params[:id])
    if @membre.update_attributes(membres_param)
      flash[:msg] = "informations est modifié avec succés"
      redirect_to :action => 'show', :id => @membre
    end
  end

  def delete
      Membre.find(params[:id]).destroy
      
    redirect_to :action => 'index'
  end

  def membre_params
    params.require(:membres).permit(:nom, :prenom, :age, :mdp,:email)
  end

  def membres_param
    params.require(:membre).permit(:nom, :prenom, :age, :mdp,:email)
  end
  
  def logout
    session.clear
    flash[:msg] = "vous etes déconnecté maintenant"
    redirect_to :controller=>'trajets', :action => 'search', :id => @membre
  end


end
