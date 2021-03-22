# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"

real_adress = ["99 Rue Edmond Rostand, Marseille", "10 Rue du Champ de Mars, Paris", "6 Rue des Jarlats, Massilly", "32 Rue Basse, Lille", "8 Rue de la République, Lyon", "25 rue Bernard, Marseille", "171 avenue du prado, Marseille", "11 boulevard Lyon, Marseille", "46 rue louis mazaudier, Marseille", "12 rue chape, Marseille", "5 rue des Castors, Aix-en-Provence", "10 Rue du Général de Gaulle, Guingamp", "3 Rue Guizot, Brest"]

Practice.destroy_all
Cabinet.destroy_all
User.destroy_all
Activity.destroy_all
Reservation.destroy_all

Activity.create!(name:"Hypnose", description: "blabla")
Activity.create!(name:"Radiesthesie", description: "blabla")
Activity.create!(name:"Naturopathie", description: "blabla")
Activity.create!(name:"Magnétisme", description: "blabla")
Activity.create!(name:"Sophrologie", description: "blabla")

User.create!(nom:"Irlande", prenom:"Chloé", email:"chloeirlande@gmail.com", email_confirmation:"chloeirlande@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"rey", prenom:"Aurore", email:"aurorerey@gmail.com", email_confirmation:"aurorerey@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"blanc", prenom:"Joséphine", email:"joséphinedujardin@gmail.com", email_confirmation:"joséphinedujardin@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"noir", prenom:"Chloe", email:"chloerey@gmail.com", email_confirmation:"chloerey@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Dumont", prenom:"Annarita", email:"annarita@gmail.com", email_confirmation:"annarita@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Jean", prenom:"Richard", email:"richardjean@gmail.com", email_confirmation:"richardjean@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Ola", prenom:"Miguel", email:"miguel@gmail.com", email_confirmation:"miguel@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Cadenaule", prenom:"Bruno", email:"bruno@gmail.com", email_confirmation:"bruno@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Irlande", prenom:"Chloé", email:"chloeirlande1@gmail.com", email_confirmation:"chloeirlande1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"rey", prenom:"Aurore", email:"aurorerey1@gmail.com", email_confirmation:"aurorerey1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"blanc", prenom:"Joséphine", email:"joséphinedujardin1@gmail.com", email_confirmation:"joséphinedujardin1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"noir", prenom:"Chloe", email:"chloerey1@gmail.com", email_confirmation:"chloerey1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Dumont", prenom:"Annarita", email:"annarita1@gmail.com", email_confirmation:"annarita1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)

User.create!(nom:"Jean", prenom:"Richard", email:"richardjean1@gmail.com", email_confirmation:"richardjean1@gmail.com",
password:"chloechloe",city: "Marseille", adresse: "32 rue de la morue", code_postal: 13003, telephone: 0111223344)


users = User.all

file = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975021/Photos%20Pros/prof4.png')
cabinet1 = Cabinet.create!(name: "Body and Soul Therapy", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "99 Rue Edmond Rostand, Marseille")
cabinet1.photo.attach(io: file, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file1 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975028/Photos%20Pros/prof3.png')
cabinet2 = Cabinet.create!(name: "Evasion Therapie", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "10 Rue du Champ de Mars, Paris")
cabinet2.photo.attach(io: file1, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file2 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975225/Photos%20Pros/proh.png')
cabinet3 = Cabinet.create!(name: "Moka Energy", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "6 Rue des Jarlats, Massilly")
cabinet3.photo.attach(io: file2, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file3 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975235/Photos%20Pros/prof1.png')
cabinet4 = Cabinet.create!(name: "Dojo Aloha", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13100, adresse_cabinet: "3 Cours d'Orbitelle, Aix-en-Provence")
cabinet4.photo.attach(io: file3, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file4 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975028/Photos%20Pros/proh1.png')
cabinet5 = Cabinet.create!(name: "Jardin d'Eden", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "8 Rue de la République, Lyon")
cabinet5.photo.attach(io: file4, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file5 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975013/Photos%20Pros/proh4.png')
cabinet6 = Cabinet.create!(name: "Cabinet d'Hypnose", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "25 rue Bernard, Marseille")
cabinet6.photo.attach(io: file5, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file6 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975005/Photos%20Pros/prof6.png')
cabinet7 = Cabinet.create!(name: "Alternativ", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "171 avenue du prado, Marseille")
cabinet7.photo.attach(io: file6, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file7 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975012/Photos%20Pros/prof5.png')
cabinet8 = Cabinet.create!(name: "Amandine", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "11 boulevard Lyon, Marseille")
cabinet8.photo.attach(io: file7, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file8 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975004/Photos%20Pros/prof7.png')
cabinet9 = Cabinet.create!(name: "Ludivine", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "10 Rue du Général de Gaulle, Guingamp")
cabinet9.photo.attach(io: file8, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)


file9 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615975004/Photos%20Pros/proh5.png')
cabinet10 = Cabinet.create!(name: "Franck", description: "Hypnose", user_id: users.sample.id,
email: "jeanmeditation@gmail.com", cp_cabinet: 13008, adresse_cabinet: "3 Rue Guizot, Brest")
cabinet10.photo.attach(io: file9, filename: 'prof4', content_type: 'image/png')

Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)
Practice.create!(cabinet_id: Cabinet.last.id, activity_id: Activity.all.sample.id)



