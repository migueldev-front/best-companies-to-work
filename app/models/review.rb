class Review < ApplicationRecord

belongs_to :user
belongs_to :company
has_many :users

validates :comment, presence: true

end
