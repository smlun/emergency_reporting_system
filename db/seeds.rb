# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

emergencies = Emergency.create([
  {
    subject: 'Zombie Apocalypse'
    category: 'Man-made Disaster'
    content: 'Underneath Raccoon City exists a genetic research facility called the Hive,
    owned by the Umbrella Corporation. A thief steals the genetically engineered T-virus
    and contaminates the Hive with it. In response, the facility\'s artificial intelligence,
    the Red Queen, seals the Hive and kills everyone inside.'
  }
  {
    subject: 'Power Outage'
    category: 'Technological Hazards'
    content: 'Toronto Hydro crews are working to restore power to thousands of customers
    following a freezing rain event that knocked out electricity to a large swath of
    neighbourhoods across the city on Tuesday.'
  }
  {
    subject: 'H1N1 Outbreak'
    category: 'Disease Epicdemic'
    subject: 'Even as the health department continues to downplay the deaths due to the
    H1N1 virus, officials admitted that the seasonal flu has been more virulent this year.
    Dr K Kolandaisamy, director of public health, said the virus is affecting patients
    above the age of 40 more severely than last year. Many of these patients, after getting
    infected, have been contracting pneumonia, as a result of which they condition rapidly
    deteriorates.'
  }
  ])
