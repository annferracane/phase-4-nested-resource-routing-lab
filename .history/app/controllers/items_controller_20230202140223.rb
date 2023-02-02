class ItemsController < ApplicationController

  def index
   if params[:user_id]
    
   else 
    
   end
    items = Item.all
    render json: items, include: :user
  end

end
