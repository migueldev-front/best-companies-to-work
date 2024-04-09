class Company < ApplicationRecord

  belongs_to :user
  has_many :review

  validates :name, :area, presence: true

end
