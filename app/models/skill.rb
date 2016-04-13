class Skill < ActiveRecord::Base
  belongs_to :profile
  acts_as_votable 
end
