class User < ApplicationRecord
#has_one_attached :avatar

has_secure_password


has_many :sent_messages, class_name: "Message", dependent: :destroy
has_many :received_messages, class_name: "Message", foreign_key: "match_id", dependent: :destroy

has_many :messages
has_many :comments
has_many :comments, as: :commentable

validates_presence_of :username, :gender

#before_create :set_default_avatar

def set_default_avatar
    if self.gender == "Male"
      self.image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgMTnyu57w3n7MiSYwH99BIzbT-5HoQUA8Jw&usqp=CAU"
    elsif self.gender == "Female" 
      self.image = "https://www.pngkit.com/png/detail/55-554008_woman-head-people-avatar-men-icon-png.png"
    elsif self.gender == "Prefer not to answer"
      self.image = "https://www.pngitem.com/pimgs/m/272-2720607_this-icon-for-gender-neutral-user-circle-hd.png"
    end
end


end
