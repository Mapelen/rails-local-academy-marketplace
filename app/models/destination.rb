class Destination < ActiveRecord::Base
  has_many :expeditions, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :airport, presence: true
end

