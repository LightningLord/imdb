require_relative '../../db/config'

class Genre < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :movies


end