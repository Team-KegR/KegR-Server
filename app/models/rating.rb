class Rating < ActiveRecord::Base
  belongs_to :user, inverse_of: :ratings
  belongs_to :keg, inverse_of: :ratings
  validates_presence_of :score
end
