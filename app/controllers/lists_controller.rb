class ListsController < ApplicationController
  def show
    @list = List.find params[:id]
  end

  def index
    @lists = List.all
  end
end