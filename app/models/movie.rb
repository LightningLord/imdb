require_relative '../../db/config'

class Movie < ActiveRecord::Base
  has_many :roles
  has_many :people, through: :roles
  belongs_to :genre
  validates :rating, inclusion: { in: %w(G PG PG-13 R)}

end