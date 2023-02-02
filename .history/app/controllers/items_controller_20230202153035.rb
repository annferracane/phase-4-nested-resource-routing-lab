class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found 

  def index
   if params[:user_id]
    items = User.find(params[:user_id]).items
   else 
    items = Item.all
   end
    render json: items, include: :user, status: :ok
  end

  def show
    render json: Item.find(params[:id]), status: :ok
  end

  def create
    item = Item.create!(items_params)
    item.user = 
    render json: item, status: :created
  end

  private

  def items_params
    params.permit(:name, :description, :price)
  end

  def render_not_found()
    render json: { errors: "Not Found" }, status: :not_found
  end



end
