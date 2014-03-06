require_relative '../config'

class CreateRoles < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :roles do |t|
      t.string :title
      t.belongs_to :person
      t.belongs_to :movie
    end
  end
end