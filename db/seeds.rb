# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database..."
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
benin = Collection.create!(name: "Benin Bronzes", period: "Medieval")
parthenon = Collection.create!(name: "The Parthenon Sculptures", period: "5th century B.C.E.")
moai = Collection.create!(name: "Moai", period: "1000 C.E.")
amarna = Collection.create!(name: "Amarna", period: "1345 B.C.E.")
maqdala = Collection.create!(name: "Maqdala", period: "1855-1868")
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

