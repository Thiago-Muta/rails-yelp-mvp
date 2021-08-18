class Restaurant < ApplicationRecord
  VALIDATE_CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: VALIDATE_CATEGORY }
  has_many :reviews, dependent: :destroy
end
