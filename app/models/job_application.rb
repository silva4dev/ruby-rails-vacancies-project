class JobApplication < ApplicationRecord
  belongs_to :user
  validates :job_id, uniqueness: { scope: :user_id }
end
