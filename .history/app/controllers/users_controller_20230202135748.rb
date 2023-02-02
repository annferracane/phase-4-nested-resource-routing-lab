class UsersController < ApplicationController

  def show
    if condition
      
    end
    
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
