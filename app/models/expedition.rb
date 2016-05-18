class Expedition < ActiveRecord::Base
  belongs_to :destination
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations


  validates :title, uniqueness: true, presence: true
  # validates :description, presence: true
  # validates :start_on, presence: true
  # validates :end_on, presence: true
  # validates :capacity, presence: true
  # validates :theme, presence: true
  # validates :destination, presence: true
  mount_uploader :photo, PhotoUploader
end
