#
class Keg < ActiveRecord::Base
  has_many :ratings, inverse_of: :keg
  has_many :comments, inverse_of: :keg
end
