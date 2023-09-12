class Group < ApplicationRecord
  has_many :links, as: :linkable
  has_many :user_groups
  has_many :users, through: :user_groups

  validates :group_name, presence: true
end
