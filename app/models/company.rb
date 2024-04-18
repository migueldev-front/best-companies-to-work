class Company < ApplicationRecord

  belongs_to :user
  has_many :review

  validates :name, :sector, :address, presence: true

end
