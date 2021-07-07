class CharactersController < ApplicationController

  def index
# To get list of Characters
    @characters = Character.all.paginate(:page => params[:page], :per_page => 10)

  end

  def search
# To get Character by id
    characters = Character.character_by_id(params[:id])

  end

end
