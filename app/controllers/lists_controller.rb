class ListsController < ApplicationController
  
  def show
    @list = current_user.lists.find params[:id]
  end

  def index
    @lists = current_user.lists
  end
end