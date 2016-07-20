# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Delete Existing data
CohortsStudents.delete_all 
Deliverable.delete_all
Review.delete_all
Cohort.delete_all
Student.delete_all
User.delete_all
Staffpick.delete_all


# Admin Users
User.create(name: 'Beth Miller', email: 'beth.miller@ga.com', password: 'password', admin: true)
User.create(name: 'Larry Palazzolo', email: 'larry.palazzolo@ga.com', password: 'password', admin: true)
User.create(name: 'Brian Hague', email: 'brian@ga.com', password: 'password', admin: true)
User.create(name: 'Paul Gatterdam', email: 'paul@ga.com', password: 'password', admin: true)

# Create Cohorts
cohort = Cohort.create(cohort: 'WDI08')
cohort2 = Cohort.create(cohort: 'WDI09')


# Student Users
# WDI08
user1 = User.create(name: 'Krista Caleron', email: 'kamsci@gmail.com', password: 'password', admin: false)
user2 = User.create(name: 'Jamie Karlovich', email: 'jamierkarlovich@gmail.com', password: 'password', admin: false)
user3 = User.create(name: 'Joe Marzullo', email: 'jmarzu13@gmail.com', password: 'password', admin: false)
user4 = User.create(name: 'Ivar Lee', email: 'ivarr5@gmail.com', password: 'password', admin: false)
user5 = User.create(name: 'Ryan Rotz', email: 'ryanrotz@gmail.com', password: 'password', admin: false)
user6 = User.create(name: 'Derek Robertson', email: 'derekrobertson@gmail.com', password: 'password', admin: false)
user14 = User.create(name: 'Brian Hague', email: 'bhague1281@gmail.com', password: 'password', admin: false)
# WDI09
user7 = User.create(name: 'Reno Mc911', email: 'darkenvy6@gmail.com', password: 'password', admin: false)
user8 = User.create(name: 'Chris Kyle Madison', email: 'ckmadison4@gmail.com', password: 'password', admin: false)
user9 = User.create(name: 'Thomas Evans', email: 'evans_760@yahoo.com', password: 'password', admin: false)
user10 = User.create(name: 'Dan Rasmussen', email: 'dan.r.rasmussen@gmail.com', password: 'password', admin: false)
user11 = User.create(name: 'Josh McBroom', email: 'mcbroomjc@gmail.com', password: 'password', admin: false)
user12 = User.create(name: 'Travis Smith', email: 'smithtm90@gmail.com', password: 'password', admin: false)
user13 = User.create(name: 'Paul Gatterdam', email: 'paul.gatterdam@generalassemb.ly', password: 'password', admin: false)
# Create students

# WDI08
student1 = Student.create(
  user_id: user1.id,
  brand: 'As a Web Developer with a background in Product Management, I have a unique perspective from both sides of the field. I excel at working with a wide range of personalities and creating ad-hoc teams, all by leaning into obstacles, soliciting contributions from every avenue as well as Listening "with a capital L."',
  linkedin: 'https://www.linkedin.com/in/kristacalderon',
  jobtracker: 'https://trello.com/b/Q72PAGNs/krista-calderon-job-hunter'
)

student2 = Student.create(
  user_id: user2.id,
  brand: "As a dancer, art maker, designer, and developer, I create pieces, works of art, spaces, and interactive products based on human experience, expression, and intuitive and efficient functionality.  I like to be part of the design and development process, troubleshooting and pushing the boudaries in a group of people who challenge yet support one another within the creative process.",
  linkedin: 'https://www.linkedin.com/in/jamie-karlovich-8b1a0011a?trk=hp-identity-name',
  resume: 'https://docs.google.com/document/d/1WNxUCONt1oxISO0vKHlXuh2jIG5lA0zEHlaML7fqygA/edit',
  jobtracker: 'https://trello.com/b/w4qtT4Cm/ga-job-stuff',
  portfolio: 'http://www.jamiekarlovich.com'
)

student3 = Student.create(
  user_id: user3.id,
  brand: "I'm a Seattle based web developer who is able to bring your ideas to life. I have a passion for creating real products from ideas at any stage, and will use this passion to create a project that exceeds your expectations. Challenges may arise, but finding innovative solutions is part of the creative adventure that I love.",
  linkedin: 'https://www.linkedin.com/in/joe-marzullo-2978a075?trk=hp-identity-photo'
)

student4 = Student.create(
  user_id: user4.id,
  brand: "I'm a web developer in Seattle interested in solving problems and answering questions by leveraging data. I enjoy the process of bringing ideas to life, whether its a Full Stack Web Application or a video chronicling my travels. Curiosity drives me to explore and create.",
  linkedin: 'https://www.linkedin.com/in/ivar-lee-843bb811a',
  resume: 'https://resume.creddle.io/resume/4p51d96n7g2',
)

student5 = Student.create(
  user_id: user5.id,
  brand: "I'm a former marketer who discovered code and couldn't stop building things. I have 5 years of experience at a software company, leading marketing campaigns and starting new brands. For that reason, I'm excellent at communicating with both designers, developers, and executives. I'm passionate about making ideas come to life and uniting people into strong and happy teams. I also make excellent Bahn Mi.",
  linkedin: 'https://www.linkedin.com/in/ryanrotz000',
  resume: 'https://resume.creddle.io/resume/8d9he0s8sig',
  portfolio: 'http://www.ryanrotz.com'
)

# Cohort WDI09
student6 = Student.create(
  user_id: user6.id,
  brand: " I believe that forward speaking and clear communication lead to better relationships in life. I hold the same for my web development. When people use my product I feel that my users are in part forming a relationship with me, so I like it to be clean clear and functional.",
  linkedin: 'https://www.linkedin.com/in/derek-robertson-66069a104',
  resume: 'https://resume.creddle.io/resume/epb7i7whyhf'
)

student7 = Student.create(
  user_id: user7.id,
  brand: "As a web developer with a background in Graphic Design, my mission is to provide a seamless and engaging experience for the user. I am a leader who sets deadlines & objectives for others in order to optimize the creative problem solving process and timely solutions. My personal interests in computer science and UI Design are the fuel for refining myself, my process and my work.",
  linkedin: 'https://www.linkedin.com/in/renomckenzie',
  resume: 'https://dl.dropboxusercontent.com/u/41544972/NewResume2016Jan-5.pdf',
  portfolio: 'http://RenoMcKenzie.com'
)

student8 = Student.create(
  user_id: user8.id,
  brand: "As an experienced product manager and jr. full stack developer, I'm passionate about building products to help businesses and their customers succeed.",
  linkedin: 'https://www.linkedin.com/in/christopher-madison-a7b68737',
  resume: 'https://docs.google.com/document/d/177CTiRqruD1hHM3d004BTcfayBvXXRfOFs7I6Ttw4_g/edit?usp=sharing',
  portfolio: 'http://cmadison.io/'
)

student9 = Student.create(
  user_id: user9.id,
  brand: "Front End Web developer. Graphic designer. Illustrator. I use my creativity and resourcefulness to get the job done. I love to travel, surf, and spend time with my wonderful family.",
  linkedin: 'https://www.linkedin.com/in/thomas-evans-67301220?trk=hp-identity-name',
  resume: 'https://dl.dropboxusercontent.com/u/41544972/NewResume2016Jan-5.pdf'
)

student10 = Student.create(
  user_id: user10.id,
  brand: "I’m a web developer with a business background who's committed to creating useful technologies to help make people's lives a little easier. I can still throw a curveball for a strike.",
  linkedin: 'https://www.linkedin.com/in/daniel-rasmussen-410520117?trk=hp-identity-name'
)

student11 = Student.create(
  user_id: user11.id,
  brand: "I'm a user-focused full-stack developer who loves solving problems for people and creating awesome experiences.  I'm particularly passionate about helping build the emerging cannabis industry through technology.",
  linkedin: 'https://www.linkedin.com/in/joshmcbroom'
)

student12 = Student.create(
  user_id: user12.id,
  brand: "I am an emerging Web Developer, working with Front End technologies to create sustainable and professional products. I am a firm believer that actions speak louder than words.",
  linkedin: 'https://www.linkedin.com/in/travis-smith-889699104',
  resume: 'https://resume.creddle.io/resume/81972tepsvv'
)

student13 = Student.create(user_id: user13.id)
student14 = Student.create(user_id: user14.id)

# Student add cohort
CohortsStudents.create([
  {
    student_id: student1.id,
    cohort_id: cohort.id
  },
  {
    student_id: student2.id,
    cohort_id: cohort.id
  },
  {
    student_id: student3.id,
    cohort_id: cohort.id
  },
  {
    student_id: student4.id,
    cohort_id: cohort.id
  },
  {
    student_id: student5.id,
    cohort_id: cohort.id
  },
  {
    student_id: student6.id,
    cohort_id: cohort.id
  },
  {
    student_id: student7.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student8.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student9.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student10.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student11.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student12.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student13.id,
    cohort_id: cohort2.id
  },
  {
    student_id: student14.id,
    cohort_id: cohort.id
  }
])

# Deliverables
Deliverable.create([
  {
    deliverable_type: 'brand',
    deliverable_name: 'Individual - Submit your Brand Statements!',
    notes: 'Think about what your strengths in your past jobs are and how they can apply to your new life as a web developer. Please submit before 9am on the due date',
    due_date: Date.today,
    cohort_id: cohort.id
  },
  {
    deliverable_type: 'brand',
    deliverable_name: 'Pods - Review Brand Statements!',
    notes: 'Review the brand statements of all your pod members by 9am on the due date.',
    due_date: Date.current+5,
    cohort_id: cohort.id
  },
  {
    deliverable_type: 'resume',
    deliverable_name: 'Individual - Resumes round 2',
    notes: 'Create a formatted version of your resume and save the link in your profile by 9am on the due date. If you need help, get resume writting tips from the Outcomes ppt.',
    due_date: Date.current+1,
    cohort_id: cohort.id
  },
  {
    deliverable_type: 'brand',
    deliverable_name: 'Individual - Submit your Brand Statements!',
    notes: 'Think about what your strengths in your past jobs are and how they can apply to your new life as a web developer. Please submit before 9am on the due date',
    due_date: Date.current+1,
    cohort_id: cohort2.id
  },
  {
    deliverable_type: 'brand',
    deliverable_name: 'Pods - Review Brand Statements!',
    notes: 'Review the brand statements of all your pod members by 9am on the due date.',
    due_date: Date.current+5,
    cohort_id: cohort2.id
  },
  {
    deliverable_type: 'resume',
    deliverable_name: 'Individual - Add the link to your resume',
    notes: 'Create a formatted version of your resume and save the link in your profile by 9am on the due date. If you need help, get resume writting tips from the Outcomes ppt.',
    due_date: Date.current+7,
    cohort_id: cohort2.id
  }
])

# Reviews

reveiws = Review.create([
  {
  student_id: student3.id,
  review_type: 'brand',
  reviewer_name: 'Chris Madison',
  review_content: "This is a great first draft Joe. I'd recommend having a version that speaks a bit about your goals, and what kind of work environment you're looking for i.e. collaborative and nuturing, startup vs. enterprise, etc."
  },
  {
  student_id: student2.id,
  review_type: 'brand',
  reviewer_name: 'Beth Miller',
  review_content: "There are a lot of lists! I like what you're saying, but I'm wondering if there's a more....efficient (??) way of saying it. The first sentance is a little complex- it might make it easier to read if you break it down just a little more. Nice work though."
  },
  {
  student_id: student1.id,
  review_type: 'brand',
  reviewer_name: 'Reno Mc911',
  review_content: "I think this a great snapshot of who you are and where you want to go.  I'd clean up the last sentence a bit, as I had to read it a few times to understand it."
  },
  {
  student_id: student4.id,
  review_type: 'resume',
  reviewer_name: 'Jamie',
  review_content: "Looking good :) Always great to add other skills you've got from other previous jobs and write them in a way that they apply to what you'll be doing when coding, working with teams, etc - Jamie"
  },
  {
  student_id: student9.id,
  review_type: 'brand',
  reviewer_name: 'Ryan Rotz',
  review_content: "possible update: 'Web developer. Graphic designer. Illustrator. I use my creativity and resourcefulness to get the job done. I love to travel, surf, and spend time with my wonderful family'."
  },
  {
  student_id: student6.id,
  review_type: 'resume',
  reviewer_name: 'Jamie Karlovich',
  review_content: "Looking good :) Always great to add other skills you've got from other previous jobs and write them in a way that they apply to what you'll be doing when coding, working with teams, etc"
  },
  {
  student_id: student4.id,
  review_type: 'resume',
  reviewer_name: 'Beth Miller',
  review_content: "Good start. Be sure to include your experience and work at GA. I like that you have your projects on there. Also, start thinking about some of the soft skills that you had to use in your previous positions that could apply to a future role as a developer. Tell the story! "
  },
  {
  student_id: student4.id,
  review_type: 'brand',
  reviewer_name: 'Derek Robertson',
  review_content: "Looks solid buddy."
  },
  {
  student_id: student4.id,
  review_type: 'brand',
  reviewer_name: 'Beth Miller',
  review_content: "I like it, but yes, I would add something in about your personality or about the type of environment you'd like to work in."
  }
])

# Staff Picks

Staffpick.create ([
  {
    name: 'Young Professionals Seattle', 
    url: 'http://www.youngprofessionalsofseattle.com/#!blank/c1csg', 
    staff_attending: 'Marina', 
    host_location: 'Thompson Hotel', 
    date: '2016-07-26'
  },
  {
    name: 'Tech Crawl', 
    url: 'http://www.washingtontechnology.org/event/tech-crawl-3/', 
    staff_attending: 'Casey, Larry', 
    notes: 'No actual pubs guys. Stops include: Outreach.io, Google and Thinkspace', 
    date: '2016-07-28'
  },
  {
    name: 'Dribble', 
    url: 'https://nvite.com/SEADribbble/e459', 
    staff_attending: 'Beth', 
    date: '2016-07-21'
  }
])

