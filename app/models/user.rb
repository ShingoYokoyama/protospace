class User < ActiveRecord::Base
  has_many :prototypes
  has_many :likes, dependent: :destroy
  has_many :liked_prototypes, through: :likes, source: :like
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
