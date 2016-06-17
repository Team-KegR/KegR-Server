class Keg < ActiveRecord::Base
  has_many :ratings, inverse_of: :kegs
  has_many :comments, inverse_of: :kegs
end
