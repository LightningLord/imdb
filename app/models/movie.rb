require_relative '../../db/config'

class Movie < ActiveRecord::Base
  has_many :roles
  has_many :people, through: :roles

end