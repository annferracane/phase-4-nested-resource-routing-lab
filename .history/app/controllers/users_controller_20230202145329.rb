class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found 

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items, status: :ok
  end

  private 

  def render_not_found(e)
    render json: { errors: e.record.errors.full_messages }, status: :not_found
  end

end
