class JobScrape

  def self.create_from_collection(jobs)
    jobs.each do |hash_array|
      something = []
      hash_array.each do |hash|
        new_job = Job.create(position: hash[:position], company: hash[:company], location: hash[:location], salary: hash[:salary], date: hash[:date], description: hash[:description], url: hash[:url])

        something << Scraper.new(new_job).scraper_method
      end
      something
    end
  end


end
