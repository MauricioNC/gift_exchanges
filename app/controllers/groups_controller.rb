class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html {}
        format.turbo_stream {}
      else
        format.html { render :new }
      end
    end
  end

  private

  def group_params
    params.require(:group).permit(:group_name, :description)
  end
end
