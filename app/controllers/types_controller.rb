class TypesController < ApplicationController

  def index
  end

  def show
    @type = Type.find(params[:id])
  end

  def new
  end

  def create
  end

  def delete
  end

  def edit
  end

  def update
  end
end
