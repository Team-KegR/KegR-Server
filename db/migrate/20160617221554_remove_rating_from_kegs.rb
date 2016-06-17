class RemoveRatingFromKegs < ActiveRecord::Migration
  def change
    remove_column :kegs, :rating, :integer
  end
end
