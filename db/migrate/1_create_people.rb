require_relative '../config'

class CreatePeople < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :people do |t|
      t.string :name
    end
  end
end