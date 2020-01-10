class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable  :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites
  has_many :histories
  #has_many :active_requests,  class_name: "Request",
  #                            foreign_key: "sent_user_id",
  #                            dependent: :destroy
  #has_many :receivers, through: :active_requests, source: :received_user_id
  #has_many :passive_requests,  class_name: "Request",
  #                             foreign_key: "received_user_id",
  #                             dependent: :destroy
  #has_many :senders, through: :passive_requests, source: :sent_user_id
end
