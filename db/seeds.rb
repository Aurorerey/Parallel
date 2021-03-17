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


Cabinet.create!(name: "Jeanne", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Beatrice", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")

Cabinet.create!(name: "Un moment pour soi", description: "Un cabinet sympa", user: users.sample,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "23 rue des champs")
