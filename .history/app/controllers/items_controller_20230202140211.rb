class ItemsController < ApplicationController

  def index
   if test
    
   elsif 
    
   end
    items = Item.all
    render json: items, include: :user
  end

end
