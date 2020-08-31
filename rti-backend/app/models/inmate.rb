class Inmate < ApplicationRecord
    has_one_attached :avatar

    has_many :comments, as: :commentable

    has_many :sent_messages, class_name: "Message", dependent: :destroy
    has_many :received_messages, class_name: "Message", foreign_key: "match_id", dependent: :destroy

    has_many :messages 

    
end
