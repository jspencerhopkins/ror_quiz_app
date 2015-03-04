class User < ActiveRecord::Base

  has_many :hobbies
	validates :name, :github_acct, uniqueness: true
	has_secure_password

  # scope :original -> { where("created_at < ?", 7.days.ago)}

  def self.original #does the dame thing as scope, above
    where("created_at < ?", 7.days.ago)
  end


end
