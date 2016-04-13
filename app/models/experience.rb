class Experience < ActiveRecord::Base
  belongs_to :profile
  acts_as_votable 
end
