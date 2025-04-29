class Issue < ApplicationRecord
  belongs_to :section
  has_one_attached :image
  has_many :keywords, dependent: :destroy

  validates :title, presence: true
end
