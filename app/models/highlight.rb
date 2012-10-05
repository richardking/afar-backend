class Highlight < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :description, :title

  validates_presence_of :description, :title, :user_id

  belongs_to :user

end
