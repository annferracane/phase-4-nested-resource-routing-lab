class UsersController < ApplicationController

  def show
    if params[]
      
    else

    end
    
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end