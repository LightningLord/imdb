require_relative '../../db/config'

class Person < ActiveRecord::Base
  has_many :roles
  has_many :movies, through: :roles
end