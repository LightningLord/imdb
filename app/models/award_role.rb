require_relative '../../db/config'

class AwardRole < ActiveRecord::Base
  belongs_to :role
  belongs_to :award
end