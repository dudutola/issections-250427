class Keyword < ApplicationRecord
  belongs_to :issue

  validates :word, presence: true
end
