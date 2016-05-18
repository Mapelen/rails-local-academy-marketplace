class Participation < ActiveRecord::Base
  belongs_to :user
  belongs_to :expedition
  validates :user_id, :uniqueness => { :scope => :expedition_id }

end
