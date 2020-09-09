class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :bio, :gender, :age, :username, :location, :looking_for

  has_many :comments
  has_many :comments, as: :commentable

end
