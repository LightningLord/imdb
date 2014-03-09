require 'rspec'
require 'date'

require_relative '../app/models/award'
require_relative '../app/models/award_role'
require_relative '../app/models/genre'
require_relative '../app/models/movie'
require_relative '../app/models/person'
require_relative '../app/models/role'

describe Genre, "validations" do
  it "shouldn't allow two genres with the same name" do
    g1 = Genre.create( :name => "Name")
    g2 = Genre.create( :name => "Name")
    g2.should_not be_valid
  end

end

describe Award, "validations" do
  it "shouldn't allow two awards with the same name" do
    a1 = Award.create( :name => "Name")
    a2 = Award.create( :name => "Name")
    a2.should_not be_valid
  end

end

describe Role, "validations" do
  it "shouldn't allow two roles with the same title" do
    r1 = Role.create( :title => "Name")
    r2 = Role.create( :title => "Name")
    r2.should_not be_valid
  end

end

describe AwardRole, "validations" do
  it "shouldn't have a future year " do
    oscar = AwardRole.create(:year => 2016)
    oscar.should_not be_valid
  end
end

describe Movie, "validations" do
  it "should allow proper ratings" do
    movie = Movie.create(:rating => "G")
    movie.should be_valid
  end

  it "shouldn't allow improper ratings" do
    movie = Movie.create(:rating => "F")
    movie.should_not be_valid
  end
end