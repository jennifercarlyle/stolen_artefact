# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "cleaning database..."
Artefact.destroy_all
Museum.destroy_all
Collection.destroy_all

puts "creating museums..."

british_museum_img = URI.open('https://images.unsplash.com/photo-1574515529318-b3a2cd51242e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2051&q=80')
pitt_rivers_img = URI.open('https://images.unsplash.com/photo-1575223970966-76ae61ee7838?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80')
v_a_img = URI.open('https://images.unsplash.com/photo-1569958062415-527a2c3f5539?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
neues_img = URI.open('https://images.unsplash.com/photo-1618604440689-d5465097c6a0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
met_img = URI.open('https://images.unsplash.com/photo-1602022761381-fd856825485f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1553&q=80')
humboldt_img = URI.open('https://images.unsplash.com/photo-1525286978863-b3201d1894f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
louvre_img = URI.open('https://images.unsplash.com/photo-1584790867047-592b9f543031?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
pushkin_img = URI.open('https://images.unsplash.com/photo-1518998053901-5348d3961a04?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')

british_museum = Museum.new(name: "British Museum", location: "London, UK")
british_museum.photo.attach(io: british_museum_img, filename: 'british.png', content_type: 'image/png')
british_museum.save!
pitt_rivers = Museum.new(name: "Pitt Rivers Museum", location: "Oxford, UK")
pitt_rivers.photo.attach(io: pitt_rivers_img, filename: 'pitt.png', content_type: 'image/png')
pitt_rivers.save!
v_a = Museum.new(name: "Victoria & Albert Museum", location: "London, UK")
v_a.photo.attach(io: v_a_img, filename: 'va.png', content_type: 'image/png')
v_a.save!
neues_museum = Museum.new(name: "Neues Museum", location: "Berlin")
neues_museum.photo.attach(io: neues_img, filename: 'neues.png', content_type: 'image/png')
neues_museum.save!
met_museum = Museum.new(name: "Met Museum", location: "New York")
met_museum.photo.attach(io: met_img, filename: 'met.png', content_type: 'image/png')
met_museum.save!
humboldt_forum = Museum.new(name: "Humboldt Forum", location: "Berlin")
humboldt_forum.photo.attach(io: humboldt_img, filename: 'humboldt.png', content_type: 'image/png')
humboldt_forum.save!
louvre = Museum.new(name: "Louvre", location: "Paris")
louvre.photo.attach(io: louvre_img, filename: 'louvre.png', content_type: 'image/png')
louvre.save!
pushkin = Museum.new(name: "Pushkin State Museum of Fine Arts", location: "Moscow")
pushkin.photo.attach(io: pushkin_img, filename: 'pushkin.png', content_type: 'image/png')
pushkin.save!

puts "created museums"

puts "creating collections..."

benin_img = URI.open('https://artforum.com/uploads/upload.002/id17679/article00_large.jpg')
parthenon_img = URI.open('https://media.newyorker.com/photos/5dd44dfbac14140008e0f90b/master/pass/Norris-ParthenonMarbles-1.jpg')
moai_img = URI.open('https://images.unsplash.com/photo-1600754047212-0cf91397fbc6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
amarna_img = URI.open('https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/07/07/16/nefertiti.jpg?width=982&height=726&auto=webp&quality=75')
maqdala_img = URI.open('https://www.britishmuseum.org/sites/default/files/styles/uncropped_large/public/2020-03/Inscribed_cross_bronze_Ethiopia_British_Museum.jpg?itok=J1wkvDpV')

benin = Collection.new(name: "Benin Bronzes", period: "Medieval", origin_location: "Benin City, Nigeria")
benin.photo.attach(io: benin_img, filename: 'benin.png', content_type: 'image/png')
benin.save!
parthenon = Collection.new(name: "The Parthenon Sculptures", period: "5th century B.C.E.", origin_location: "Athens, Greece")
parthenon.photo.attach(io: parthenon_img, filename: 'parthenon.png', content_type: 'image/png')
parthenon.save!
moai = Collection.new(name: "Moai", period: "1000 C.E.", origin_location: "Easter Island, Chile")
moai.photo.attach(io: moai_img, filename: 'moai.png', content_type: 'image/png')
moai.save!
amarna = Collection.new(name: "Amarna", period: "1345 B.C.E.", origin_location: "amarna, egypt")
amarna.photo.attach(io: amarna_img, filename: 'amarna.png', content_type: 'image/png')
amarna.save!
maqdala = Collection.new(name: "Maqdala", period: "1855-1868", origin_location: "Amba Mariam, Ethiopia")
maqdala.photo.attach(io: maqdala_img, filename: 'maqdala.png', content_type: 'image/png')
maqdala.save!

puts "created collections"

puts "creating artefacts..."

benin_bronze_img = URI.open('https://dmdlnu87i51n1.cloudfront.net/v1/uk/cjggp4qic5chl0123qqeq5h12/0x0:1280x901/960x960/301_mu_mb_benin_bronzes_01.jpg')
parthenon_statue_img = URI.open('https://i2-prod.mirror.co.uk/incoming/article4751399.ece/ALTERNATES/s1227b/Parthenon-Sculptures-Elgin-Marbles.jpg')
hoa_img = URI.open('https://news.artnet.com/app/news-upload/2018/12/GettyImages-1071030678-1024x683.jpg')
crown_img = URI.open('https://i.guim.co.uk/img/media/43945187e5ff4b9a211d0496069ca9c2bf7d162f/37_0_1125_675/master/1125.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=a0cdd2a8567fc4bc186de9d1df6b54b9')
queen_img = URI.open('https://www.bigissuenorth.com/wp-content/uploads/2018/01/Nefertiti-bust_bigissuenorth.jpg')

benin_bronze = Artefact.new(name: "Benin Bronze Plaque", origin_year: "16thC - 17thC",
origin_location: "Benin City", current_location: "British Museum, London",
context: "Brass plaques which decorated the Oba's palace.",
made_by: "Edo", material: "brass, iron", registration_num: "Af1898,0115.31", museum_id: british_museum.id, collection_id: benin.id)
benin_bronze.photo.attach(io: benin_bronze_img, filename: 'benin_bronze.png', content_type: 'image/png')
benin_bronze.save!

parthenon_statue = Artefact.new(name: "Statue from Parthenon Sculptures", origin_year:"438 BCE-432 BCE",
origin_location: "Athens", current_location: "British Museum, London",
context: "Marble statue from East Pediments of the Parthenon.",
made_by: "Pheidias", material: "marble", registration_num: "1816,0610.98", museum_id: british_museum.id, collection_id: parthenon.id)
parthenon_statue.photo.attach(io: parthenon_statue_img, filename: 'parthenon_statue.png', content_type: 'image/png')
parthenon_statue.save!

hoa = Artefact.new(name: "Hoa Hakananai'a", origin_year:"1000-1200",
origin_location: "Easter Island: Rano Kao", current_location: "British Museum, London",
context: "Statue which was originally placed on sacred site of Orongo.",
made_by: "Rapanui", material: "basalt, coral, stone",
registration_num: "Oc1869,1005.1", museum_id: british_museum.id, collection_id: moai.id)
hoa.photo.attach(io: hoa_img, filename: 'hoa.png', content_type: 'image/png')
hoa.save!

crown = Artefact.new(name: "Crown", origin_year:"1740",
origin_location: "Ethiopia", current_location: "Victoria & Albert Museum, London",
context: "Religious",
made_by: "Unknown", material: "gold, silver, copper",
registration_num: "M.27-2005", museum_id: v_a.id, collection_id: maqdala.id)
crown.photo.attach(io: crown_img, filename: 'crown.png', content_type: 'image/png')
crown.save!

queen = Artefact.new(name: "Bust of Queen Nefertiti", origin_year:"1340 BCE",
origin_location: "Amarna", current_location: "Neues Museum, Berlin",
context: "Sculpture",
made_by: "Thutmose", material: "limestone, gypsum, crystal, wax",
registration_num: "ÄM 21300", museum_id: neues_museum.id, collection_id: amarna.id)
queen.photo.attach(io: queen_img, filename: 'queen.png', content_type: 'image/png')
queen.save!

puts "created artefacts"
