class DrawParticipantsController < ApplicationController
  before_action :set_user

  def index
    @users = User.select(:id, :username).where.not(id: @user.id).where(is_drawed: false).shuffle

    unless @users.empty?
      @drawed_participant = draw_participant()
    end
  end

  def draw_participant
    random_idx = rand(0..@users.count-1)

    participant = User.find(@users[random_idx].id)
    participant.update(is_drawed: true)

    @users[random_idx].username
  end

  private

  def set_user
    @user = User.find(Link.find_by_link(params[:user_link]).linkable_id)
  end
end
