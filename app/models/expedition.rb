class Expedition < ActiveRecord::Base
  belongs_to :user
  belongs_to :destination

  validates :title, uniqueness: true, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :capacity, presence: true
  validates :theme, presence: true
end
