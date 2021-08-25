# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'


puts "clear database"
Job.destroy_all
Company.destroy_all

puts "creating companies..."

# company_url = "https://spreadsheets.google.com/feeds/cells/1Ziw9vqsNt-uL-h2EEiAljkoi5NYT-5GWjk_F2Rn5swM/1/public/full?alt=json"
# company_seed_url = open(company_url).read
# company_seed_json = JSON.parse(company_seed_url)

# company_seed_json['feed']['entry'].each_with_index do |seed, index|
#   company = Company.new(
#     name: seed['gsx$name']['$t'],
#     statement: seed['gsx$statement']['$t'],
#     logo: seed['gsx$logo']['$t'],
#     email: seed['gsx$email']['$t'],
#     description: seed['gsx$description']['$t'],
#     headquarters: seed['gsx$headquarters']['$t'],
#     )
#   company.save!
#   puts "company#{index} created"
# end

# puts "Successfully created companies"

sparkasse = Company.create(name: 'Sparkasse', statement: '', url: '', email: 'sparkass@fuchs.com', description: '', headquarters: 'Berlin')
katzencafé = Company.create(name: 'Katzencafé', statement: '', logo: '', url: 'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1027&q=80', email: 'katzen@cafe.com', description: '', headquarters: 'Brrr')
# {name: 'Santa', statement: '', logo: '', url: '', email: '', description: '', headquarters: ''}, {name: 'Breula', statement: '', logo: '', url: '', email: '', description: '', headquarters: ''}])
puts "companies created"

puts "creating jobs..."
job_one = Job.create!(title: 'Head Of Finances', category: 'contract', applying: '#', description: 'What we need and what you have:
Experience in delivering commercial apps using at least one of mainstream no-code platforms (Bubble, Glide, Adalo).
Practical understanding of handling, storing, manipulating and transferring different types of data and the tools available to do this within the context of no-code/low code application builds (for example, Zapier, Airtable, Integromat).
Working knowledge of the different platforms available to deliver no-code and low code solutions and the capability to evaluate the best tool for the job
Demonstrable experience of architecting real-world, practical solutions to technical problems using no-code and low-code technologies.
A deep understanding of the limitations of both bespoke software development and delivering applications using no-code tools
Whilst not essential, a basic understanding or some experience of software development, scripting (JavaScript), SQL and working with APIs and API documentation would be beneficial.
Similarly, an understanding of UX concepts, evaluating user requirements and interpret user stories would be desirable. ', company_id: Company.first[:id])
job_two = Job.create!(title: 'Schnurrmeisterin', category: 'freelancer', applying: '#', description: 'We’re Looking for Someone With ⚡
* 3 years experience in software product management or veterinary workflows
* Passion for solving customer problems
* Ability and excitement to lead product changes with influence
* Ability to think through challenges and develop features that solve them elegantly
* Ability to become an expert on the veterinary hospital market/industry
* Decisiveness and resiliency when confronted with challenges
* A high bar for simple, beautiful, and modern user interfaces and experiences
* Intuition to challenge and improve our user interface
* Great attention to detail and excellent time-management skills
* Excellent interpersonal and leadership skills
* Good written and verbal communication
* Basic modern software tool experience: G Suite (Gmail, Google Drive, Google Sheets/Docs/Forms)
* Knowledge of software development processes
', company_id: Company.last[:id])
job_three = Job.create(title: 'Hairball Creator', category: 'contract', applying: '#', description: 'You’ll need to:
Regularly ship real value to our users. You can both live two years ahead of your team and support them in the present moment as you shepherd your team’s work from discovery to ideation to release to follow-up. In particular, you’ll work hand-in-hand with a product designer on your team to jointly develop vision, prioritize, and execute on strategy.
Understand the user journey, and not just the one in our apps, but the one in the real world as users resolve their financial struggles.
Be comfortable with multiple discovery and ideation strategies in your quest to make YNAB consistently better. You enjoy talking to customers in user interviews and usability testing and have a knack for summarizing research in a concise way for teammates.
Be a curious, persistent, and quick learner, staying ahead of new ideas, technologies and other opportunities to help YNAB users take total control of their money, and maybe even sleep better at night.
Understand deeply that at YNAB “cross-functional” isn’t code for “designers and engineers.” We know that great ideas can come from anywhere, so Support Specialists and Marketers are also members of our flat product teams.
Learn the design principles and financial logic of our apps like the back of your hand. Then learn our engineering processes like the back of your other hand. Then find another hand for internalizing our brand, marketing strategies, and support ethic.
Synthesize and make sense of ALL THE DATA and information about our products, for yourself and to help others across the organization make better decisions. You’re fluent in quantitative and qualitative data collection and analysis—and are cautious about the failings of each.
Communicate, explain, persuade, explore and otherwise get all the things done in asynchronous formats. Yes, we like talking to each other in real time, but as a remote team, much of our collaboration is asynchronous and written.
Be intensely curious. Period.
Oh, also, not to the exclusion of anything else, but you’re intensely curious about how people learn, what motivates them, how they change and develop habits, and how behavior inside a product might change behavior outside it.
Be comfortable speaking the language of software development and product design. If you’re also comfortable diving into HTML and CSS (or even one of the programming languages in our development stack!), that’s a plus, but it’s not a requirement. Being conversant across all disciplines is key.
Manage key partner relationships, from day-to-day communication to contract negotiation.
“Bonus points” awarded if you already use and love YNAB', company_id: Company.last[:id])
puts "jobs created"
