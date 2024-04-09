class Review < ApplicationRecord

belongs_to :user
belongs_to :company
has_many :user

validates :comment, presence: true

end
