class User < ApplicationRecord
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, confirmation: true, uniqueness: true
	validates :email_confirmation, presence: true
	validates :password, confirmation: true, presence: true
	validates :password_confirmation, presence: true
	validates :role,
		presence: true,
		inclusion: {
			in: %w(member admin),
    		message: "%{value} is not a valid role"
    	}

	has_many :lists, dependent: :destroy

	def admin?
		role == 'admin'
	end
end