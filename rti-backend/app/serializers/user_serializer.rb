class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bio, :gender, :age, :username, :location, :looking_for
end
