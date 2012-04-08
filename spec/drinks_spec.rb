require "rspec"
require "spec_helper"
require "mongoid"
require '/users/jimallen/code/barrista/model/barrista'

describe "Coffee has a name" do

  it "should have a name" do
    b = Barrista.new
    b.first_name = "test"
    b.save
    b1 = Barrista.first
    b1.first_name.should == "test"

  end
end
