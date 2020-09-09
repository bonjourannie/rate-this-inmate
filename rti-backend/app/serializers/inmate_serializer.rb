class InmateSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :contact, :username, :upvote, :name, :gender, :age, :charges, :release_date, :looking_for

  has_many :comments
end
