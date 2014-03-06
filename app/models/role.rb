require_relative '../../db/config'

class Role < ActiveRecord::Base
  belongs_to :person
  belongs_to :movie
  has_many :award_roles
  has_many :awards, through: :award_roles
end