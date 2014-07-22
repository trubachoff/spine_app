class User < ActiveRecord::Base
  belongs_to :company

  validates :name, presence: true
  validates :lastname, presence: true

end
