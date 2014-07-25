class User < ActiveRecord::Base
  belongs_to :company
  has_many :customers
  has_many :events
  validates :name, presence: true
  validates :lastname, presence: true

end
