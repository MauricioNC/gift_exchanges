class GroupsController < ApplicationController
  include GroupsHelper

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    
    respond_to do |format|
      if @group.save
        generate_link()        
        format.html {}
        format.turbo_stream {}
      else
        format.html { render :new }
      end
    end
  end

  def generate_link
    @link = Link.create(link: SecureRandom.uuid, linkable: @group)
    @link = ENV["BASE_URL"] + "/" + @link.link + "/users/new"
  end

  private
  
  def group_params
    params.require(:group).permit(:group_name, :description)
  end
end
