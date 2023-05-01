class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: :bad_email },
                    uniqueness: { case_sensitive: false }
end
