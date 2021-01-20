class Job < ApplicationRecord

  validates :position, presence: true
  validates :company, presence: true
  validates :location, length: { maximum: 50 }
  validates :salary, length: { maximum: 50 }
  validates :date, length: { maximum: 50 }
  validates :description, presence: true
  validates :url, presence: true

end
