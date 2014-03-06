require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/ar-students.sqlite3")

require_relative '../app/models/award'
require_relative '../app/models/award_role'
require_relative '../app/models/movie'
require_relative '../app/models/person'
require_relative '../app/models/role'