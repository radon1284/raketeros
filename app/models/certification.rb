class Certification < ActiveRecord::Base
  belongs_to :profile
  validates_formatting_of :certification_url, using: :url
end
