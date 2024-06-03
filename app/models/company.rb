class Company < ApplicationRecord

  belongs_to :user
  has_many :users
  has_many :reviews, through: :user

  validates :name, :sector, :address, presence: true

end
