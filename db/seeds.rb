# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database..."
Event.destroy_all
Artefact.destroy_all
Museum.destroy_all
Collection.destroy_all


puts "creating museums"
british_museum = Museum.create!(name: "British Museum", location: "London, UK")
pitt_rivers = Museum.create!(name: "Pitt Rivers Museum", location: "Oxford, UK")
v_a = Museum.create!(name: "Victoria & Albert Museum", location: "London, UK")
neues_museum = Museum.create!(name: "Neues Museum", location: "Berlin")
met_museum = Museum.create!(name: "Met Museum", location: "New York")
humboldt_forum = Museum.create!(name: "Humboldt Forum", location: "Berlin")
louvre = Museum.create!(name: "Louvre", location: "Paris")
pushkin = Museum.create!(name: "Pushkin State Museum of Fine Arts", location: "Moscow")
puts "created museums"

puts "creating collections"
benin = Collection.create!(name: "Benin Bronzes", period: "Medieval", origin_location: "Benin City, Nigeria")
parthenon = Collection.create!(name: "The Parthenon Sculptures", period: "5th century B.C.E.", origin_location: "Athens, Greece")
moai = Collection.create!(name: "Moai", period: "1000 C.E.", origin_location: "Easter Island, Chile")
amarna = Collection.create!(name: "Amarna", period: "1345 B.C.E.", origin_location: "amarna, egypt")
maqdala = Collection.create!(name: "Maqdala", period: "1855-1868", origin_location: "Amba Mariam, Ethiopia")
puts "created collections"


puts "creating artefacts"
Artefact.create!(name: "Benin Bronze Plaque", origin_year: "16thC - 17thC",
origin_location: "Benin City", current_location: "British Museum, London",
context: "Brass plaques which decorated the Oba's palace.",
made_by: "Edo", material: "brass, iron", registration_num: "Af1898,0115.31", museum_id: british_museum.id, collection_id: benin.id)

Artefact.create!(name: "Statue from Parthenon Sculptures", origin_year:"438 BCE-432 BCE",
origin_location: "Athens", current_location: "British Museum, London",
context: "Marble statue from East Pediments of the Parthenon.",
made_by: "Pheidias", material: "marble", registration_num: "1816,0610.98", museum_id: british_museum.id, collection_id: parthenon.id)

Artefact.create!(name: "Hoa Hakananai'a", origin_year:"1000-1200",
origin_location: "Easter Island: Rano Kao", current_location: "British Museum, London",
context: "Statue which was originally placed on sacred site of Orongo.",
made_by: "Rapanui", material: "basalt, coral, stone",
registration_num: "Oc1869,1005.1", museum_id: british_museum.id, collection_id: moai.id)

Artefact.create!(name: "Crown", origin_year:"1740",
origin_location: "Ethiopia", current_location: "Victoria & Albert Museum, London",
context: "Religious",
made_by: "Unknown", material: "gold, silver, copper",
registration_num: "M.27-2005", museum_id: v_a.id, collection_id: maqdala.id)

Artefact.create!(name: "Bust of Queen Nefertiti", origin_year:"1340 BCE",
origin_location: "Amarna", current_location: "Neues Museum, Berlin",
context: "Sculpture",
made_by: "Thutmose", material: "limestone, gypsum, crystal, wax",
registration_num: "ÄM 21300", museum_id: neues_museum.id, collection_id: amarna.id)
puts "created artefacts"


artefact_array = Artefact.all
puts "creating events for Benin Plaque"
event_benin_1 = Event.new(date: "11th century C.E.", description: "The Kingdom of Benin is formed in West Africa, in what is now southern Nigeria.")
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
puts "created events for the artefact"


















