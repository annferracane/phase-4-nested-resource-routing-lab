class UsersController < ApplicationController

  def show
    if condition
      
  begin
    
  rescue => exception
    
  else
    
  ensure
    
  end
    
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
