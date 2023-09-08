class LinkUserToGroupJob < ApplicationJob
  queue_as :default

  def perform(user_id, group_id)
    user = User.find(user_id)
    group = Group.find(group_id)

    user.groups << group
  end
end
