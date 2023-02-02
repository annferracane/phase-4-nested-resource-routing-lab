class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found 

  def show
    if params[]
      
    else

    end
    
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  private 

end
