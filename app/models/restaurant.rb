class Restaurant < ApplicationRecord
  validates :address, :name, :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy
end
