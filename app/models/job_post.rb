class JobPost < ActiveRecord::Base
  belongs_to :user
  has_many :job_types
end
