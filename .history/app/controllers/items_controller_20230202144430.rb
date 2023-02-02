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
    render json: Item.find(:id), status: :ok
  end

  def post
    if params[:user_id]
      item = Item.create!(items_params, :user_id)
    else
      item = Item.find(params[:id])
    end 
    render json: item, status: :created
  end

  private

  def items_params
    params.permit(:name, :description, :price)
  end

  def render_not_found(e)
    render json: {errors: e.record.errors.full_messages}
  end



end
