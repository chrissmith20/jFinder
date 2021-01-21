class Job < ApplicationRecord

  validates :position, presence: true
  validates :company, presence: true
  validates :location, length: { maximum: 50 }
  validates :salary, length: { maximum: 50 }
  validates :date, length: { maximum: 50 }
  validates :description, presence: true
  validates :url, presence: true

  def self.create_from_collection(jobs)
    jobs.each do |hash_array|
      hash_array.each do |hash|
          Job.create(position: hash[:position], company: hash[:company], location: hash[:location], salary: hash[:salary], date: hash[:date], description: hash[:description], url: hash[:url])
      end
    end
  end
end
