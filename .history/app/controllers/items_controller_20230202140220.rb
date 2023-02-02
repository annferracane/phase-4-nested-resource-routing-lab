class ItemsController < ApplicationController

  def index
   if params[]
    
   else 
    
   end
    items = Item.all
    render json: items, include: :user
  end

end
