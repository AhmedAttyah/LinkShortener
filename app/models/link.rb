class Link < ActiveRecord::Base
  attr_accessible :in_url, :out_url

  validates :in_url, :out_url, presence: true
  validates :in_url, uniqueness: true
end
