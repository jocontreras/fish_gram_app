class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules.
  # :confirmable,:omniauthable, :lockable and :timeoutable
  VALID_ROLES = ['admin', 'fisherman']
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  validates :role, inclusion: {in: VALID_ROLES, message: '%{value} is not a valid user role'}
end
