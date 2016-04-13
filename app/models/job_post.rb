class JobPost < ActiveRecord::Base
  belongs_to :user
  has_many :job_types
  validates_formatting_of :contact_email, using: :email
  validates_formatting_of :website, using: :url
end
