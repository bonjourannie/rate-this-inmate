class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :body, :commentable_type, :commentable_id

  belongs_to :commentable, polymorphic: true

end
