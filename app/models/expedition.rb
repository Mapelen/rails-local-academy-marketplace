class Expedition < ActiveRecord::Base
  belongs_to :destination
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :starts_on, presence: true
  validates :ends_on, presence: true
  validates :capacity, presence: true
  validates :theme, presence: true
  validates :destination, presence: true
  mount_uploader :photo, PhotoUploader
end
