class Expedition < ActiveRecord::Base
  belongs_to :destination

  validates :title, uniqueness: true, presence: true
  # validates :description, presence: true
  # validates :start_on, presence: true
  # validates :end_on, presence: true
  # validates :capacity, presence: true
  # validates :theme, presence: true
  # validates :destination, presence: true
end
