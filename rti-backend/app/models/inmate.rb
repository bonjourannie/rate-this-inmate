class Inmate < ApplicationRecord
    has_one_attached :avatar

    has_secure_password

    has_many :inmate_interests, dependent: :destroy
    has_many :interests, through: :inmate_interests

    has_many :sent_messages, class_name: "Message", dependent: :destroy
    has_many :received_messages, class_name: "Message", foreign_key: "match_id", dependent: :destroy

    has_many :messages 

    
end
