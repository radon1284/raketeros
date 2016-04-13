class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :experiences
  has_many :certifications
  has_many :projects
  has_many :educations
  has_many :skills
  acts_as_votable 
end
