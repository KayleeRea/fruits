class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
  end

  def new
  end

  def create
    Fruit.create(name: params[:name])
    redirect_to '/'
  end

  def edit
    @fruits = Fruit.find(params[:id])
  end

  def update
    fruit = Fruit.find(params[:id])
    name = params[:edit_name]
    fruit.update(name: name)
    redirect_to '/'
  end

  def destroy
    fruit = Fruit.find(params[:id])
    fruit.destroy
    redirect_to '/'
  end
end