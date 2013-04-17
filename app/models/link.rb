class Link < ActiveRecord::Base
  attr_accessible :in_url, :out_url

  validates :in_url, :out_url, presence: true
  validates :in_url, uniqueness: true
  validate :valid_url
  belongs_to :user

  def valid_url
  	if (out_url.scan(/https?:\/\/.+\..+/i)== [])
  		errors.add(:field, "Wrong URL format!")
  	end
  end
end
