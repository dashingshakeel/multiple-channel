class User < ApplicationRecord
  
has_many :messages, dependent: :destroy
def name
  email.split('@')[0]
end
has_many :chat_rooms, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
