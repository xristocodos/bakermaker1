class User < ApplicationRecord
  #invite BCrypt to the party
  has_secure_password

  #new user signup pw confirmation legwork (w/o putting pw confirm in user table)
  validates_confirmation_of :password  #for password confirm on new user
  attr_accessor :attribute1, :attribute2

  #ORM relationships
  has_many :friendships
  has_many :friends, through: :friendships
end
