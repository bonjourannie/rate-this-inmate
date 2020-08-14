class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :user_id
      t.integer :match_id
      t.boolean "sent_visible", default: true
      t.boolean "received_visible", default: true

      t.timestamps
    end
  end
end
