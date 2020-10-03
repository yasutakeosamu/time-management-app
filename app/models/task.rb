class Task < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :title, :inportance, :deadline, :hour, presence:true
  validate :before_today

  private

  def before_today
    errors.add(:deadline, "can't be the post") if deadline != nil && deadline < Date.today 
  end
end
