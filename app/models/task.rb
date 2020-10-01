class Task < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :title, :inportance, :deadline, :hour, :check, presence:true
end
