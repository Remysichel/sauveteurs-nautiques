puts 'Cleaning database...'
Jobseeker.destroy_all
Company.destroy_all
Offer.destroy_all
Candidacy.destroy_all

puts 'Creating Jobseeker...'
Jobseeker.create!(
  email: 'remy@gmail.com',
  password: 'secret',
  first_name: 'Rems',
  last_name: 'Sichel',
  genre: 'Monsieur',
  address: 'Bordeaux',
  phone_number: '0600000001',
  profession: 'Chef'
)

puts 'Creating Company...'
Company.create!(
  email: 'job@gmail.com',
  password: 'secret',
  name: 'La Sud',
  sector: 'Sauvetage en mer',
  description: 'Poste de secours de Lacanau Sud',
  place: 'Lacanau Sud',
  phone_number: '0612345678',
  siret: '123456789101112'
)

Company.create!(
  email: 'formation@gmail.com',
  password: 'secret',
  name: 'Bordeaux ocean',
  sector: 'Sauvetage nautique',
  description: 'Societe de formation en sauvetage nautique',
  place: 'Bordeaux',
  phone_number: '0687654321',
  siret: '131415161718'
)

puts 'Creating Offer...'
Offer.create!(
  company_id: 3,
  job: true,
  job_name: 'Sauveteur en mer',
  job_description: 'Saison complete en tant que sauveteur en mer',
  contract: '35h/semaine à 25€/h',
  required_profile: 'BNSSA et 2ans de expériences',
  date_start: '1 juin 2019'
)

Offer.create!(
  company_id: 4,
  job: false,
  formation_name: 'BNSSA',
  formation_description: 'Epreuve ecrite et physique du BNSSA 2ieme degres',
  degree: '2ieme degres',
  required_profile: 'Personne athletique et motivé',
  date_start: '20 mars 2019',
  price: '550€'
)

puts 'Creating Candidacy...'
Candidacy.create!(
  jobseeker_id: 2,
  offer_id: 2
)

puts 'Finished!!'
