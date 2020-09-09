class AddCommentIdToInmates < ActiveRecord::Migration[6.0]
  def change
    add_column :inmates, :comment_id, :integer
  end
end
