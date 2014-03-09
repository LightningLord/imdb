require_relative '../../db/config'

class AwardRole < ActiveRecord::Base
  belongs_to :role
  belongs_to :award
  validates :year, :numericality => { :less_than_or_equal_to => Time.now.year }
end