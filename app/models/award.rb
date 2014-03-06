require_relative '../../db/config'

class Award < ActiveRecord::Base
  has_many :award_roles
  has_many :roles, through: :award_roles
end