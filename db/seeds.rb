# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"

Cabinet.destroy_all
User.destroy_all
Category.destroy_all

Category.create!(name:"corps")
Category.create!(name:"esprit")

User.create!(nom:"Irlande", prenom:"Chloé", email:"chloeirlande@gmail.com", email_confirmation:"chloeirlande@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"rey", prenom:"Aurore", email:"aurorerey@gmail.com", email_confirmation:"aurorerey@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"blanc", prenom:"Joséphine", email:"joséphinedujardin@gmail.com", email_confirmation:"joséphinedujardin@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"noir", prenom:"Chloe", email:"chloerey@gmail.com", email_confirmation:"chloerey@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Dumont", prenom:"Annarita", email:"annarita@gmail.com", email_confirmation:"annarita@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Jean", prenom:"Richard", email:"richardjean@gmail.com", email_confirmation:"richardjean@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Ola", prenom:"Miguel", email:"miguel@gmail.com", email_confirmation:"miguel@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Cadenaule", prenom:"Bruno", email:"bruno@gmail.com", email_confirmation:"bruno@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Irlande", prenom:"Chloé", email:"chloeirlande1@gmail.com", email_confirmation:"chloeirlande1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"rey", prenom:"Aurore", email:"aurorerey1@gmail.com", email_confirmation:"aurorerey1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"blanc", prenom:"Joséphine", email:"joséphinedujardin1@gmail.com", email_confirmation:"joséphinedujardin1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"noir", prenom:"Chloe", email:"chloerey1@gmail.com", email_confirmation:"chloerey1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Dumont", prenom:"Annarita", email:"annarita1@gmail.com", email_confirmation:"annarita1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Jean", prenom:"Richard", email:"richardjean1@gmail.com", email_confirmation:"richardjean1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Ola", prenom:"Miguel", email:"miguel1@gmail.com", email_confirmation:"miguel1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

User.create!(nom:"Cadenaule", prenom:"Bruno", email:"bruno1@gmail.com", email_confirmation:"bruno1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003)

users = User.all



file = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet1 = Cabinet.create!(name: "Jeanne", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet1.photo.attach(io: file, filename: 'prof4', content_type: 'image/png')

file1 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet2 = Cabinet.create!(name: "Beatrice", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet2.photo.attach(io: file1, filename: 'prof4', content_type: 'image/png')

file2 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet3 = Cabinet.create!(name: "Jean-Claude", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet3.photo.attach(io: file2, filename: 'prof4', content_type: 'image/png')

file3 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet4 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet4.photo.attach(io: file3, filename: 'prof4', content_type: 'image/png')

file4 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet5 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet5.photo.attach(io: file4, filename: 'prof4', content_type: 'image/png')

file5 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet6 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet6.photo.attach(io: file5, filename: 'prof4', content_type: 'image/png')

file6 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet7 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet7.photo.attach(io: file6, filename: 'prof4', content_type: 'image/png')

file7 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet8 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet8.photo.attach(io: file7, filename: 'prof4', content_type: 'image/png')

file8 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet9 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet9.photo.attach(io: file8, filename: 'prof4', content_type: 'image/png')

file9 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet10 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet10.photo.attach(io: file9, filename: 'prof4', content_type: 'image/png')

file10 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet11 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet11.photo.attach(io: file10, filename: 'prof4', content_type: 'image/png')

file11 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet12 = Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
cabinet12.photo.attach(io: file11, filename: 'prof4', content_type: 'image/png')
