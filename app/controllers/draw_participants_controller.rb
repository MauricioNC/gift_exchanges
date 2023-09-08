class DrawParticipantsController < ApplicationController
  before_action :set_user

  def index
    @users = User.select(:username).where.not(id: @user.id).map(&:username)
  end

  private

  def set_user
    @user = User.find(Link.find_by_link(params[:user_link]).linkable_id)
  end
end
