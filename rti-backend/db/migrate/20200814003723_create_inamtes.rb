class CreateInamtes < ActiveRecord::Migration[6.0]
  def change
    create_table :inamtes do |t|
      t.string :contact
      t.string :username
      t.integer :upvote
      t.string :name
      t.string :gender
      t.integer :age
      t.string :charges
      t.string :release_date

      t.timestamps
    end
  end
end
