class ItemsController < ApplicationController

  def index
   if params[:user_id]
    items = User.find(params[:user_id]).items
   else 
    items = Item.all
   end
    render json: items, include: :user, status: :ok
  end

  def show
    render json: Item.find(:id), status: :ok
  end

  def post
    if params[:user_id]
      user = User.find(params[:user_id])
    end

  end

  private

  def items_params
    params.permit(name)
  end

end
