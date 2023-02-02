class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found 

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items, status: :ok
  end

  private 

  def render_not_found()
    render json: { errors: "Not Found" }, status: :not_found
  end

end
