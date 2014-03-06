require_relative '../config'

class CreateAwards < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :awards do |t|
      t.string :name
    end
  end
end