# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "cleaning database..."
Event.destroy_all
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
amarna = Collection.new(name: "Amarna", period: "1345 B.C.E.", origin_location: "Amarna, Egypt")
amarna.photo.attach(io: amarna_img, filename: 'amarna.png', content_type: 'image/png')
amarna.save!
maqdala = Collection.new(name: "Maqdala", period: "1855 - 1868", origin_location: "Amba Mariam, Ethiopia")
maqdala.photo.attach(io: maqdala_img, filename: 'maqdala.png', content_type: 'image/png')
maqdala.save!

puts "created collections"

puts "creating artefacts..."

benin_bronze_plaque_img = URI.open('https://dmdlnu87i51n1.cloudfront.net/v1/uk/cjggp4qic5chl0123qqeq5h12/0x0:1280x901/960x960/301_mu_mb_benin_bronzes_01.jpg')
benin_bronze_armlet_img = URI.open('https://www.bmimages.com/pix/ET/005/00575708001_P.JPG')
# benin_bronze_anklet_img = URI.open('https://i.ebayimg.com/00/s/MTA2NFgxNjAw/z/9agAAOSw6~dfEcf4/$_1.JPG')
benin_bronze_aquamanile_img = URI.open('https://uwehistorycommunity.files.wordpress.com/2021/01/benin-carved-leopards.jpg?w=1024')
parthenon_statue_img = URI.open('https://i2-prod.mirror.co.uk/incoming/article4751399.ece/ALTERNATES/s1227b/Parthenon-Sculptures-Elgin-Marbles.jpg')
hoa_img = URI.open('https://news.artnet.com/app/news-upload/2018/12/GettyImages-1071030678-1024x683.jpg')
crown_img = URI.open('https://i.guim.co.uk/img/media/43945187e5ff4b9a211d0496069ca9c2bf7d162f/37_0_1125_675/master/1125.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=a0cdd2a8567fc4bc186de9d1df6b54b9')
queen_img = URI.open('https://www.bigissuenorth.com/wp-content/uploads/2018/01/Nefertiti-bust_bigissuenorth.jpg')

benin_bronze_plaque = Artefact.new(name: "Benin Bronze Plaque", origin_year: "16th - 17th Century",
origin_location: "Benin City", current_location: "British Museum, London",
context: "Brass plaques which decorated the Oba's palace",
made_by: "Edo", material: "brass, iron", registration_num: "Af1898,0115.31", museum_id: british_museum.id, collection_id: benin.id)
benin_bronze_plaque.photo.attach(io: benin_bronze_plaque_img, filename: 'benin_bronze_plaque.png', content_type: 'image/png')
benin_bronze_plaque.save!

benin_bronze_armlet = Artefact.new(name: "Benin Bronze Armlet", origin_year: "16th - 17th Century",
origin_location: "Benin City", current_location: "Metropolitan Museum, New York",
context: "Brass plaques which decorated the Oba's palace",
made_by: "Edo", material: "brass, iron", registration_num: "Af1898,0115.312", museum_id: british_museum.id, collection_id: benin.id)
benin_bronze_armlet.photo.attach(io: benin_bronze_armlet_img, filename: 'benin_bronze_armlet.png', content_type: 'image/png')
benin_bronze_armlet.save!

# benin_bronze_anklet = Artefact.new(name: "Benin Bronze Anklet", origin_year: "16th - 19th Century",
# origin_location: "Benin City", current_location: "Neues Museum, Berlin",
# context: "Brass plaques which decorated the Oba's palace",
# made_by: "Edo", material: "brass, iron", registration_num: "Af1898,0115.313", museum_id: british_museum.id, collection_id: benin.id)
# benin_bronze_anklet.photo.attach(io: benin_bronze_anklet_img, filename: 'benin_bronze_anklet.png', content_type: 'image/png')
# benin_bronze_anklet.save!

benin_bronze_aquamanile = Artefact.new(name: "Benin Bronze Aquamanile", origin_year: "17th - 18th Century",
origin_location: "Benin City", current_location: "Pushkin museum, Moscow",
context: "Brass plaques which decorated the Oba's palace",
made_by: "Edo", material: "brass, iron", registration_num: "Af1898,0115.314", museum_id: british_museum.id, collection_id: benin.id)
benin_bronze_aquamanile.photo.attach(io: benin_bronze_aquamanile_img, filename: 'benin_bronze_aquamanile.png', content_type: 'image/png')
benin_bronze_aquamanile.save!

parthenon_statue = Artefact.new(name: "Statue from Parthenon Sculptures", origin_year:"438 - 432 B.C.E.",
origin_location: "Athens", current_location: "British Museum, London",
context: "Marble statue from East Pediments of the Parthenon",
made_by: "Pheidias", material: "marble", registration_num: "1816,0610.98", museum_id: british_museum.id, collection_id: parthenon.id)
parthenon_statue.photo.attach(io: parthenon_statue_img, filename: 'parthenon_statue.png', content_type: 'image/png')
parthenon_statue.save!

hoa = Artefact.new(name: "Hoa Hakananai'a", origin_year:"1000 - 1200",
origin_location: "Easter Island: Rano Kao", current_location: "British Museum, London",
context: "Statue which was originally placed on sacred site of Orongo",
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

queen = Artefact.new(name: "Bust of Queen Nefertiti", origin_year:"1340 B.C.E.",
origin_location: "Amarna", current_location: "Neues Museum, Berlin",
context: "Sculpture",
made_by: "Thutmose", material: "limestone, gypsum, crystal, wax",
registration_num: "ÄM 21300", museum_id: neues_museum.id, collection_id: amarna.id)
queen.photo.attach(io: queen_img, filename: 'queen.png', content_type: 'image/png')
queen.save!

puts "created artefacts"

artefact_array = Artefact.all
puts "creating events for Benin Plaque"
event_benin_1 = Event.new(date: "11th Century C.E.", description: "The Kingdom of Benin is formed in West Africa, in what is now southern Nigeria.")
event_benin_1.photo.attach(io: File.open('app/assets/images/drawing_benin_city.jpeg'), filename: 'drawing_benin_city.jpeg', content_type: 'image/jpeg')
event_benin_1.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_1.save!

event_benin_2 = Event.new(date: "January 1897", description: "Acting Consul-General for the British Niger Coast Protectorate, James Robert Phillips, sets out to depose the Oba of Benin, although his reasons for doing so remain unclear. The Iyase (commander in chief of the Benin Army) responds with a surprise ambush, leaving only two British survivors. In Britain this became known as 'The Benin Massacre'.")
event_benin_2.photo.attach(io: File.open('app/assets/images/oba-ovonramwen.jpeg'), filename: 'oba-ovonramwen.jpeg', content_type: 'image/jpeg')
event_benin_2.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_2.save!

event_benin_3 = Event.new(date: "February 1897", description: "Britain's punitive Benin Expedition of 1897. Ovonramwen, Oba (King) of Benin, is overthrown and the royal palace is plundered. The Kingdom of Benin is annexed by the British Empire.")
event_benin_3.photo.attach(io: File.open('app/assets/images/benin_1897.jpeg'), filename: 'benin_1897.jpeg', content_type: 'image/jpeg')
event_benin_3.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_3.save!

event_benin_4 = Event.new(date: "1898", description: "The British Museum acquires three Benin plaques from the Foreign Office. ")
event_benin_4.photo.attach(io: File.open('app/assets/images/beninplaque_115.31.png'), filename: 'beninplaque_115.31.png', content_type: 'image/png')
event_benin_4.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_4.save!

event_benin_5 = Event.new(date: "2018", description: "The governor of Edo State, Godwin Obaseki, announces that he is working with Oba Ewuare II to establish a royal museum in Benin City, to be built on vacant land adjacent to the royal palace. This would provide a building with the appropriate environmental and security standards to house international loans. The scheme is being backed by the National Commission for Museums and Monuments, which means it also has federal government support.")
event_benin_5.photo.attach(io: File.open('app/assets/images/benin_plaque_detail_115.31.png'), filename: 'benin_plaque_detail_115.31.png', content_type: 'image/png')
event_benin_5.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_5.save!

event_benin_6 = Event.new(date: "2021", description: "To date, two of the largest collections of Benin Bronzes are located at the British Museum, at 700 pieces, and the Ethnological Museum of Berlin, at 580 pieces.")
event_benin_6.photo.attach(io: File.open('app/assets/images/bm_benin_bronzes.jpeg'), filename: 'bm_benin_bronzes.jpeg', content_type: 'image/jpeg')
event_benin_6.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_6.save!

puts "created events for the Benin Plaque"


artefact_array = Artefact.all
puts "creating events for Hoa Hakananai'a"
event_hoa_1 = Event.new(date: "1000 - 1200 C.E.", description: "No Easter Island statues have been scientifically dated, but statue making in general is said to have begun by at least 1000 C.E., and occurred mostly between 1300 and 1500 C.E. Manufacture is said to have ended by 1600 C.E., when islanders began to topple them.")
event_hoa_1.photo.attach(io: File.open('app/assets/images/moai.jpeg'), filename: 'moai.jpeg', content_type: 'image/jpeg')
event_hoa_1.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_1.save!

event_hoa_2 = Event.new(date: "November 1868", description: "Hoa Hakananai'a is taken from Orongo, Easter Island (Rapa Nui) by the crew of the British ship HMS Topaze. It is associated with the island's birdman cult. When recorded in 1868, Hoa Hakananai'a was standing erect, part buried inside a freestone ceremonial 'house' in the Orongo village at the south-western tip of the island. It faced towards an extinct volcanic crater known as Rano Kau, with its back turned to the sea. It may have been made for this location, or first erected elsewhere before being moved to where it was found. It was dug out, dragged down from Rano Kau on a sledge, and rafted out to the ship.")
event_hoa_2.photo.attach(io: File.open('app/assets/images/hoa_onboard.jpeg'), filename: 'hoa_onboard.jpeg', content_type: 'image/jpeg')
event_hoa_2.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_2.save!

event_hoa_3 = Event.new(date: "16 August 1869", description: "Hoa Hakananai'a arrives on the HMS Topaze in Plymouth, England. The Admiralty offers the statue to Queen Victoria, who proposes that it should be given to the British Museum. It was mounted in a plinth and exhibited outside the museum's front entrance, beneath the portico.")
event_hoa_3.photo.attach(io: File.open('app/assets/images/hoa_1936.jpeg'), filename: 'hoa_1936.jpeg', content_type: 'image/jpeg')
event_hoa_3.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_3.save!

event_hoa_4 = Event.new(date: "World War II - 2000", description: "During the Second World War, it was taken inside where it mostly remained until 1966. In that year it was moved to the museum's then Department of Ethnography, which had separate premises in Burlington Gardens. It returned to the British Museum's main site in 2000, when it was exhibited on a new, higher plinth in the Great Court.")
event_hoa_4.photo.attach(io: File.open('app/assets/images/greatcourt_2020.jpeg'), filename: 'greatcourt_2020.jpeg', content_type: 'image/jpeg')
event_hoa_4.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_4.save!

event_hoa_5 = Event.new(date: "2015 - 2019", description: "In 2015, Leonardo Pakarati released a documentary titled, Te Kuhane O Te Tupuna (The Spirit of the Ancestors), in which Hoa Hakananai'a is a symbol stolen from Rapa Nui. In 2018, Laura Alarcón Rapu, the Governor of Easter Island, asked the British Museum to return the statue. The museum agreed to discuss a loan of the statue with representatives of the people. Keeper of the Department of Africa, Oceania and the Americas at the British Museum, Lissant Bolton, visited Easter Island in June 2019.")
event_hoa_5.photo.attach(io: File.open('app/assets/images/moai_statues.jpeg'), filename: 'moai_statues.jpeg', content_type: 'image/jpeg')
event_hoa_5.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_5.save!

event_hoa_6 = Event.new(date: "2021", description: "Currently, the Hoa Hakananai'a sits in the Wellcome Trust Gallery at the British Museum (Room 24: Living and Dying).")
event_hoa_6.photo.attach(io: File.open('app/assets/images/hoa_wellcome.jpeg'), filename: 'hoa_wellcome.jpeg', content_type: 'image/jpeg')
event_hoa_6.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_6.save!
puts "created events for Hoa Hakananai'a"













