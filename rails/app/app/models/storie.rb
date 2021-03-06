class Storie < ApplicationRecord
belongs_to :user
has_many :storie_categories
has_many :categories, through: :storie_categories
validates :name, presence: true, length: {minimum: 5, maximum: 50}
validates :content, presence: true
validates :user_id, presence: true
end
