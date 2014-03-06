require_relative '../config'

class CreateMovies < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :movies do |t|
      t.string :title
      t.string :rating
    end
  end
end