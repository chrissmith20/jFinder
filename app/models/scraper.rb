require 'httparty'
require 'nokogiri'
require 'pry'
# Use following command to run in terminal: ruby ./app/models/scraper.rb
class Scraper

  def scraper_method
    binding.pry
    url = "https://www.indeed.com/jobs?q=Software%20Engineer&l=Boston%2C%20MA&rbl=Boston%2C%20MA&jlid=e167aeb8a259bcac&sort=date&vjk=04ef7a50c33007f7"
    page_content = HTTParty.get(url)
    parsed_content = Nokogiri::HTML(page_content)

    job_listings = parsed_content.css('div.jobsearch-SerpJobCard')
    job_company = job_listings.css('span.company')
    job_role = job_listings.css('h2.title')
    job_location = job_listings.css('span.accessible-contrast-color-location')
    job_salary = job_listings.css('span.salaryText')
    # job_link = job_role.css('a')[0].attributes['href'].value

    #Hard code. Need to automate the following array:
    job_urls = [
      job_role.css('a')[0].attributes['href'].value,
      job_role.css('a')[1].attributes['href'].value,
      job_role.css('a')[2].attributes['href'].value,
      job_role.css('a')[3].attributes['href'].value,
      job_role.css('a')[4].attributes['href'].value,
      job_role.css('a')[5].attributes['href'].value,
      job_role.css('a')[6].attributes['href'].value,
      job_role.css('a')[7].attributes['href'].value,
      job_role.css('a')[8].attributes['href'].value,
      job_role.css('a')[9].attributes['href'].value,
      job_role.css('a')[10].attributes['href'].value,
      job_role.css('a')[11].attributes['href'].value,
      job_role.css('a')[12].attributes['href'].value,
      job_role.css('a')[13].attributes['href'].value,
      job_role.css('a')[14].attributes['href'].value
    ]

    job_b = parsed_content.css('tr')

    jobs = []

    job_listings.each do |element|
      job_info = {
        company: element.css('span.company').text,
        position: element.css('h2.title').text,
        location: element.css('span.accessible-contrast-color-location').text,
        salary: element.css('span.salaryText').text,
        date: element.css('span.date').text,
        description: element.css('div.summary').text,
        url: "indeed.com"
      }

      jobs << job_info
    end


  end
end
scrape = Scraper.new
scrape.scraper_method()
