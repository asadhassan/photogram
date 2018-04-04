class User < ApplicationRecord
  # Direct associations

  has_many   :received_requests,
             :class_name => "Request",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :sent_requests,
             :class_name => "Request",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :photos_posts,
             :class_name => "Photo",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
