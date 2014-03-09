require_relative '../config'

class CreateAwardRoles < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :award_roles do |t|
      t.string :name
      t.integer :year
      t.belongs_to :role
      t.belongs_to :award
    end
  end
end