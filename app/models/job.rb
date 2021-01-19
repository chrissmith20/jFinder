class Job < ApplicationRecord

  validates :position, presence: true
  validates :company, presence: true
  validates :location, length: { is: 50 }
  validates :salary, length: { is: 50 }
  validates :date, length: { is: 50 }
  validates :description, presence: true
  validates :url, presence: true

end
