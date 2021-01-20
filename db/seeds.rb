# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

careers = Job.create([
    { position:"Entry Level Software Engineer",
      company: "Google",
      location: "California",
      salary: "$50,000",
      date: "1/20/2021",
      description: "Blah blah blah you won't be able to afford any housing with the   salary we pay you.",
      url:"www.google.com"},
    {
      position: "Software Engineer",
      company: "Sony",
      location:"Boston MA",
      salary: "$71,300",
      date: "1/20/2021",
      description: "Must have a master's Degree. 20+ years required.",
      url: "www.Sony.com"
    },
    {
      position: "Senior Software Engineer",
      company: "Apple",
      location:"",
      salary:"",
      date: "1/20/2021",
      description:"",
      url: "www.Apple.com.com"
    }
  ]
)
