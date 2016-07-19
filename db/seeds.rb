# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Admin Users
User.create(name: 'Beth Miller', email: 'beth.miller@ga.com', password: 'password', admin: true)
User.create(name: 'Larry Palazzolo', email: 'larry.palazzolo@ga.com', password: 'password', admin: true)

# Variables
cohorts = Cohort.create([{cohort: 'WDI08'}, {cohort: 'WDI09'}, {cohort: 'WDI10'}])
students = Student.create([
  {
    name: 'Krista Calderon',
    brand: 'As a Web Developer with a background in Product Management, I have a unique perspective from both sides of the field. I excel at working with a wide range of personalities and creating ad-hoc teams, all by leaning into obstacles, soliciting contributions from every avenue as well as Listening "with a capital L."',
    linkedin: 'https://www.linkedin.com/in/kristacalderon',
    jobtracker: 'https://trello.com/b/Q72PAGNs/krista-calderon-job-hunter'
  },
  {
    name: 'Jamie Karlovich',
    brand: "As a dancer, art maker, designer, and developer, I create pieces, works of art, spaces, and interactive products based on human experience, expression, and intuitive and efficient functionality.  I like to be part of the design and development process, troubleshooting and pushing the boudaries in a group of people who challenge yet support one another within the creative process.",
    linkedin: 'https://www.linkedin.com/in/jamie-karlovich-8b1a0011a?trk=hp-identity-name',
    resume: 'https://docs.google.com/document/d/1WNxUCONt1oxISO0vKHlXuh2jIG5lA0zEHlaML7fqygA/edit',
    jobtracker: 'https://trello.com/b/w4qtT4Cm/ga-job-stuff',
    portfolio: 'www.jamiekarlovich.com'
  },
  {
    name: 'Joe Marzullo',
    brand: "I'm a Seattle based web developer who is able to bring your ideas to life. I have a passion for creating real products from ideas at any stage, and will use this passion to create a project that exceeds your expectations. Challenges may arise, but finding innovative solutions is part of the creative adventure that I love.",
    linkedin: 'https://www.linkedin.com/in/joe-marzullo-2978a075?trk=hp-identity-photo'
  }
])

# Students
