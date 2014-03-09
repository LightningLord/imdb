require_relative '../config'

class CreateGenres < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :genres do |t|
      t.string :name
    end

    change_table :movies do |t|
      t.belongs_to :genre
    end

  end
end