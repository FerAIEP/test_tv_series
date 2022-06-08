class TvShow < ApplicationRecord
  validates :name, presence: true
  validates :summary, presence: true
  validates :release_date, presence: true
  # validates :rating, presence: true
end
