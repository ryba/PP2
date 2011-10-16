class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :password, :password_confirmation, :remember_me

  validates_presence_of :login
  validates_uniqueness_of :login

  validates_presence_of :email
  validates_uniqueness_of :email

  validates_confirmation_of :password
  validates_presence_of :password

  has_many :fields, :dependent => :destroy

end
