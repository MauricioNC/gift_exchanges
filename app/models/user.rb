class User < ApplicationRecord
  has_many :links, as: :linkable
  has_many :user_groups
  has_many :groups, through: :user_groups

  validates :username, presence: true
  validates :full_name, presence: true
  validates :email, presence: true
end
