class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: 

  def show
    if params[]
      
    else

    end
    
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
