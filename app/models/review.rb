class Review < ActiveRecord::Base
  belongs_to :expedition

  validates :content, presence: true
  validates :rating, presence: true
end
