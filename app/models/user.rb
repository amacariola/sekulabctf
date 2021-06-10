class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true, presence: true
  validates_format_of :email, with: /@/
  validates :name, presence: true 

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
     approved? ? super : :not_approved
  end
    
  
end
