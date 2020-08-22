class AddLookingForToInmates < ActiveRecord::Migration[6.0]
  def change
    add_column :inmates, :looking_for, :string
  end
end
