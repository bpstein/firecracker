class PartyController < ApplicationController

  # before_action :authenticate_user!, only: [:list]

  def index
    @parties = Party.all 
  end

  def show
    @party = Party.find(params[:id])
  end

end
