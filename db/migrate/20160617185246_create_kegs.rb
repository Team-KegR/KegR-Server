class CreateKegs < ActiveRecord::Migration
  def change
    create_table :kegs do |t|
      t.string :name
      t.integer :validation
      t.boolean :kicked
      t.integer :rating
      t.has_many :comments

      t.timestamps null: false
    end
  end
end
