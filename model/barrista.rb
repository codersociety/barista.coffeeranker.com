require "mongoid"

class Drinks
  include Mongoid::Document

  field :name , :type => String
end

class Barrista

  include Mongoid::Document
  field :first_name , :type => String
  field :last_name
  field :twitter_handle
  field :facebook_page

  #has_and_belongs_to_many :drinks , inverse_of: nil
end