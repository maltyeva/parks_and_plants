class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, :size, :durability, :color, presence: true
end
