class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :Comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :inmate_id
      t.string :commentable_type
      t.integer :commentable_id

      t.timestamps
    end
  end
end
