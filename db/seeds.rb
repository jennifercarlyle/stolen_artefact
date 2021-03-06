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
washington_museum_img = URI.open('https://washington.org/sites/default/files/michellefortephotography_overview-of-museum-of-natural-history-atrium_mydccool-via-crowdriff.jpg')

british_museum = Museum.new(name: "British Museum", location: "London, UK", founded: 1753, opened: 1759, visitors_per_year: 5.9, income: 4.3, funding: "DCMS", director: "Hartwig Fischer")
british_museum.photo.attach(io: british_museum_img, filename: 'british.png', content_type: 'image/png')
british_museum.save!
pitt_rivers = Museum.new(name: "Pitt Rivers Museum", location: "Oxford, UK", founded: 1884, opened: 1884, visitors_per_year: 0.5, income: 0, funding: "Oxford University, Heritage Lottery", director: "Laura N.K. van Broekhoven")
pitt_rivers.photo.attach(io: pitt_rivers_img, filename: 'pitt.png', content_type: 'image/png')
pitt_rivers.save!
v_a = Museum.new(name: "Victoria & Albert Museum", location: "London, UK", founded: 1852, opened: 1852, visitors_per_year: 4.3, income: 1.5, funding: "Arts Council England Lottery", director: "Tristram Hunt")
v_a.photo.attach(io: v_a_img, filename: 'va.png', content_type: 'image/png')
v_a.save!
neues_museum = Museum.new(name: "Neues Museum", location: "Berlin", founded: 1843, opened: 1843, visitors_per_year: 0.5, income: 0.8, funding: "Unknown", director: "Eva-Christina Kraus")
neues_museum.photo.attach(io: neues_img, filename: 'neues.png', content_type: 'image/png')
neues_museum.save!
met_museum = Museum.new(name: "Met Museum", location: "New York", founded: 1870, opened: 1870, visitors_per_year: 6.5, income: 37.5, funding: "US Government Grants", director: "Max Hollein")
met_museum.photo.attach(io: met_img, filename: 'met.png', content_type: 'image/png')
met_museum.save!
humboldt_forum = Museum.new(name: "Humboldt Forum", location: "Berlin", founded: 2020, opened: 2020, director: "Hartmut Dorgerloh")
humboldt_forum.photo.attach(io: humboldt_img, filename: 'humboldt.png', content_type: 'image/png')
humboldt_forum.save!
louvre = Museum.new(name: "Louvre", location: "Paris", founded: 1793, opened: 1793, visitors_per_year: 10.2, director: "Jean-Luc Martinez and Henri Loyrette")
louvre.photo.attach(io: louvre_img, filename: 'louvre.png', content_type: 'image/png')
louvre.save!
pushkin = Museum.new(name: "Pushkin State Museum of Fine Arts", location: "Moscow", founded: 1912, opened: 1912, visitors_per_year: 1, funding: "Russian Federation", director: "Marina Loshak")
pushkin.photo.attach(io: pushkin_img, filename: 'pushkin.png', content_type: 'image/png')
pushkin.save!
washington_museum = Museum.new(name: "Washington Museum", location: "Washington")
washington_museum.photo.attach(io: washington_museum_img, filename: 'washington_museum.png', content_type: 'image/png')
washington_museum.save!

puts "created museums"

puts "creating collections..."

benin_img = URI.open('https://artforum.com/uploads/upload.002/id17679/article00_large.jpg')
parthenon_img = URI.open('https://media.newyorker.com/photos/5dd44dfbac14140008e0f90b/master/pass/Norris-ParthenonMarbles-1.jpg')
moai_img = URI.open('https://images.unsplash.com/photo-1600754047212-0cf91397fbc6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
amarna_img = URI.open('https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/07/07/16/nefertiti.jpg?width=982&height=726&auto=webp&quality=75')
maqdala_img = URI.open('https://www.britishmuseum.org/sites/default/files/styles/uncropped_large/public/2020-03/Inscribed_cross_bronze_Ethiopia_British_Museum.jpg?itok=J1wkvDpV')

benin = Collection.new(name: "Benin Bronzes", period: "13th - 19th Century", origin_location: "Benin City, Nigeria", number_of_artefacts: "Estimated to be over 3000", number_of_museums: "161",
 introduction: "The Benin Bronzes are a group of thousands of objects that were taken from the kingdom of Benin, in what is now Nigeria, in 1897. (Their exact number is unknown, though it is believed to exceed 3,000.)
 These objects???including figurines, tusks, sculptures of Benin???s rulers, and an ivory mask???were looted by British troops, and have since been dispersed around the world, with the bulk of the works now residing with state museums in Europe.
 Contrary to the name, not all of the works are made of bronze. Because they made their way beyond West Africa as a result of a colonial conquest, the Benin Bronzes have faced calls for their return, both within Nigeria and outside it.",
 context: "Institutions on several continents hold objects from the Benin Bronzes group, many of which are considered highly valuable. The British Museum has the most Benin Bronzes of any institution worldwide, with 900 objects from the group in its holdings.
 Because of the vast number of Benin Bronzes in its collection, the British Museum has repeatedly been the subject of protests from activists, scholars, and artists who claim that the institution owns stolen property.
 Berlin???s Ethnological Museum???now a part of the newly built Humboldt Forum, which also houses a research laboratory???has also faced pushback because it owns more than 500 objects from the Benin Bronzes cache, as well as other works that various figures have claimed should be repatriated to their former owners.
Yet these are but two of the many museums around the globe that hold Benin Bronzes. In his 2020 book The Brutish Museums: The Benin Bronzes, Colonial Violence and Cultural Restitution, scholar Dan Hicks compiled a list of the 161 institutions that have acquired Benin Bronzes by various means.
His list includes the Metropolitan Museum of Art in New York, the Art Institute of Chicago, the Los Angeles County Museum of Art, the Victoria and Albert Museum in London, the Mus??e du Quai Branly???Jacques Chirac in Paris, the Vatican Museums, the Australian Museum in Sydney, the National Museum of Ethnology in Osaka, and the Louvre Abu Dhabi in the United Arab Emirates.
Whereas 45 U.K. institutions and 38 U.S. institutions hold Benin Bronzes, just 9 Nigerian ones own objects from the group, according to Hicks???s count. (courtesy: artnews.com)")
benin.photo.attach(io: benin_img, filename: 'benin.png', content_type: 'image/png')
benin.save!
parthenon = Collection.new(name: "The Parthenon Sculptures", period: "5th century B.C.E.", origin_location: "Athens, Greece", number_of_artefacts: "150 metres of the original frieze remains", number_of_museums: "8",
introduction: "The Parthenon Sculptures are a collection of different types of marble architectural decoration from the temple of Athena (the Parthenon) on the Acropolis in Athens. Made between 447BC and 432BC they consist of: a frieze which shows the procession of the Panathenaic festival
(the commemoration of the birthday of the goddess Athena); a series of metopes (sculpted relief panels) depicting the battle between Centaurs and Lapiths at the marriage-feast of Peirithoos; and figures of the gods and legendary heroes from the temple's pediments.
The British Museum houses 15 metopes, 17 pedimental figures and 247ft (75m) of the original frieze.",
context: "Today all surviving examples of decoration from the Parthenon are found in museums; there are fragments in Paris, the Vatican, Copenhagen, Munich, Vienna and W??rzburg.
Of the 50 percent of the original sculptures that survive, about half are in the British Museum and half in Athens.Ever since their acquisition by the British nation in 1816, their ownership has been contentious.
The Parthenon marbles are often called the 'Elgin Marbles', after Thomas Bruce, 7th Earl of Elgin, who had them removed from the Acropolis complex between 1801 and 1812.
By then, the fifth-century Parthenon was showing its age, having suffered a catastrophic 1687 explosion while it was being used by the Turks as a gunpowder magazine. Years of looting followed.
In the early nineteenth century, Greece was still part of the Ottoman Empire, and it was from that government that Elgin obtained a firman, or official permission, for taking the marbles.")
parthenon.photo.attach(io: parthenon_img, filename: 'parthenon.png', content_type: 'image/png')
parthenon.save!
moai = Collection.new(name: "Moai", period: "1000 C.E.", origin_location: "Easter Island, Chile", number_of_artefacts: "Close to 1000, with around 900 on Rapa Nui (Easter Island)", number_of_museums: "6",
  introduction: "Moai statues are massive megaliths at Easter Island, and these are what this island is famous for. The moais were built in approximately 1400 - 1650 A.D. by the natives of this island also known as Rapa Nui. Many know them as the Easter Island heads. This is a misconception from having seen photos of statues in the volcano Rano Raraku partitially covered up with soil. The truth is that all of these 'heads' have full bodies. There are around 1000 statues, up to 86 tons tons in weight and 10 m in height, though average is around half of that.",
  context: "In 1868, the crew of a British survey ship, HMS Topaze, visited Rapa Nui.The crew was led to the location of Moai Hava at Mataveri, and collected this first moai on 2 November 1868. Soon after, Hoa Hakananai'a was discovered in the house at Orongo by two crew members searching the village. Commodore Richard Powell decided to unearth this second moai, with the intent of bringing them both to Britain. The stone house was dismantled, and Hoa Hakananai'a transported on a sledge to shore. A Rapanui man, known as Tepano, subsequently recalled that the crew, followed by a Rapanui chief, dragged Hoa Hakananai'a down to the beach, before floating it out to the ship on a raft. Later, he had the scene tattooed on his arm.
    Upon the return of HMS Topaze to England in 1869, Hoa Hakananai'a was offered to Queen Victoria by the Admiralty, which had been made aware of his existence by Commodore Powell. Queen Victoria subsequently donated Hoa Hakananai'a to the British Museum. On 6 October 1869, the arrival of the statue at the Museum was officially reported to the Trustees, marking the beginning of a new chapter in the complex history of Hoa Hakananai'a. With him was also Moai Hava, who was donated directly to the Museum by the Admiralty.")
moai.photo.attach(io: moai_img, filename: 'moai.png', content_type: 'image/png')
moai.save!
amarna = Collection.new(name: "Amarna", period: "1345 B.C.E.", origin_location: "Amarna, Egypt", number_of_artefacts: "Unknown", number_of_museums: "Unknown",
introduction: "During a brief seventeen-year reign (ca. 1353???1336 B.C.) the pharaoh Amenhotep IV/Akhenaten, founder of the world's first known monotheistic religion, devoted his life and the resources of his kingdom to the worship of the Aten (a deity symbolized by the sun disk) and thus profoundly affected history and the history of art. The move to a new capital, Akhetaten/Amarna, brought essential changes in the depictions of royal women. It was in their female imagery, above all, that the artists of Amarna departed from the traditional iconic representations to emphasize the individual, the natural, in a way unprecedented in Egyptian art.",
context: "A picture of exceptional intimacy emerges from the sculptures and reliefs of the Amarna Period. Akhenaten, his wife Nefertiti, and their six daughters are seen in emotional interdependence even as they participate in cult rituals. The female principle is emphasized in astonishing images: the aging Queen Mother Tiye, the mysterious Kiya, and Nefertiti, whose painted limestone bust in Berlin is the best-known work from ancient Egypt???perhaps from all antiquity.

The workshop of the sculptor Thutmose???one of the few artists of the period whose name is known to us???revealed a treasure trove when it was excavated in 1912. An entire creative process is traced through an examination of the work of Thutmose and his assistants, who lived in a highly structured environment. All was left behind when Amarna was abandoned after the death of Akhenaten and the return to religious orthodoxy.")
amarna.photo.attach(io: amarna_img, filename: 'amarna.png', content_type: 'image/png')
amarna.save!
maqdala = Collection.new(name: "Maqdala", period: "1855 - 1868", origin_location: "Amba Mariam, Ethiopia", number_of_artefacts: "Unknown", number_of_museums: "Unknown",
  introduction: "Maqdala was an almost impenetrable mountain-top fortress in northern Ethiopia which became the seat of power for Emperor Tewodros II. Within its precincts, Tewodros started to establish a library and treasury, as well as dedicating a new church.
Tewodros had sought to bring the whole of Ethiopia under his control through military campaigns. During these conquests, he collected books, holy relics and manuscripts from churches throughout Ethiopia, and particularly from Gondar, with the intention of establishing Maqdala as a seat of learning and research.
As a consequence, the treasury at Maqdala housed many of the finest examples of silk textiles, gold and silver regalia and jewellery, weapons, liturgical vessels, processional crosses and tabots.",
context: "In a storeroom of the British Museum sits a collection of 11 wood and stone tablets that nobody is allowed to see. They are Christian plaques, or tabots, that represent the Ark of the Covenant, and they belong???though belong in this case is a contested term???to the Ethiopian Orthodox Church, which believes only its priests should view them.

The tabots were seized, along with hundreds of other precious items???processional crosses, gold and silver jewelry, illustrated manuscripts???by the British army in 1868, after it defeated Ethiopian Emperor Tewodros II at the battle of Maqdala. There is hardly a clearer case of officially sanctioned plunder: When Tewodros committed suicide, soldiers ransacked his treasury, then auctioned off their finds among their entourage to pay for the expedition. They had even brought along an expert from the British Museum to bid for some of the choicest items. The majority of the artifacts, some of which first passed through the hands of private owners, now sit in the collections of leading U.K. museums and libraries, even though Ethiopia has repeatedly asked for them back over the past century and a half.")
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
moai_head_img = URI.open('https://i1.rgstatic.net/ii/profile.image/809812803743744-1570085826933_Q512/Ross-Mckenzie-8.jpg')
moai_statue_img = URI.open('https://live.staticflickr.com/7814/47075031161_02e077a36b_b.jpg')

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

moai_head = Artefact.new(name: "Moai Head", origin_year:"1000 - 1200",
origin_location: "Easter Island: Rano Kao", current_location: "National museum of Natural History, Washington DC",
context: "Statue which was originally placed on sacred site of Orongo",
made_by: "Rapanui", material: "Lapilli Tuff",
registration_num: "E128368-0 ", museum_id: washington_museum.id, collection_id: moai.id)
moai_head.photo.attach(io: moai_head_img, filename: 'moai_head.png', content_type: 'image/png')
moai_head.save!

moai_statue = Artefact.new(name: "Moai Statue", origin_year:"1000 - 1200",
origin_location: "Easter Island: Rano Kao", current_location: "Louvre, Paris",
context: "Statue which was originally placed on sacred site of Orongo",
made_by: "Rapanui", material: "Tuff",
registration_num: "MH.35.61.1", museum_id: louvre.id, collection_id: moai.id)
moai_statue.photo.attach(io: moai_statue_img, filename: 'moai_statue.png', content_type: 'image/png')
moai_statue.save!

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
registration_num: "??M 21300", museum_id: neues_museum.id, collection_id: amarna.id)
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
event_benin_4.photo.attach(io: File.open('app/assets/images/beninplaque.jpeg'), filename: 'beninplaque.jpeg', content_type: 'image/jpeg')
event_benin_4.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_4.save!

event_benin_5 = Event.new(date: "2018", description: "The governor of Edo State, Godwin Obaseki, announces that he is working with Oba Ewuare II to establish a royal museum in Benin City, to be built on vacant land adjacent to the royal palace. This would provide a building with the appropriate environmental and security standards to house international loans. The scheme is being backed by the National Commission for Museums and Monuments, which means it also has federal government support.")
event_benin_5.photo.attach(io: File.open('app/assets/images/beninmuseum.jpeg'), filename: 'beninmuseum.jpeg', content_type: 'image/jpeg')
event_benin_5.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_5.save!

event_benin_6 = Event.new(date: "2021", description: "To date, two of the largest collections of Benin Bronzes are located at the British Museum, at 700 pieces, and the Ethnological Museum of Berlin, at 580 pieces.")
event_benin_6.photo.attach(io: File.open('app/assets/images/bm_benin_bronzes.jpeg'), filename: 'bm_benin_bronzes.jpeg', content_type: 'image/jpeg')
event_benin_6.artefact_id = artefact_array.find_by(name: "Benin Bronze Plaque").id
event_benin_6.save!

puts "created events for the Benin Plaque"

puts "creating events for Hoa Hakananai'a"
event_hoa_1 = Event.new(date: "1000 - 1200 C.E.", description: "No Easter Island statues have been scientifically dated, but statue making in general is said to have begun by at least 1000 C.E., and occurred mostly between 1300 and 1500 C.E. Manufacture is said to have ended by 1600 C.E., when islanders began to topple them.")
event_hoa_1.photo.attach(io: File.open('app/assets/images/moai.jpeg'), filename: 'moai.jpeg', content_type: 'image/jpeg')
event_hoa_1.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_1.save!

event_hoa_2 = Event.new(date: "November 1868", description: "Hoa Hakananai'a is taken from Orongo, Easter Island (Rapa Nui) by the crew of the British ship HMS Topaze. It is associated with the island's birdman cult. When recorded in 1868, Hoa Hakananai'a was standing erect, part buried inside a freestone ceremonial 'house' in the??Orongo??village at the south-western tip of the island. It faced towards an extinct volcanic crater known as??Rano Kau, with its back turned to the sea. It may have been made for this location, or first erected elsewhere before being moved to where it was found. It was dug out, dragged down from Rano Kau on a sledge, and rafted out to the ship.")
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

event_hoa_5 = Event.new(date: "2015 - 2019", description: "In 2015, Leonardo Pakarati released a documentary titled, Te Kuhane O Te Tupuna (The Spirit of the Ancestors), in which Hoa Hakananai'a is a symbol stolen from Rapa Nui. In 2018, Laura Alarc??n Rapu, the Governor of Easter Island, asked the British Museum to return the statue. The museum agreed to discuss a loan of the statue with representatives of the people. Keeper of the Department of Africa, Oceania and the Americas at the British Museum, Lissant Bolton, visited Easter Island in June 2019.")
event_hoa_5.photo.attach(io: File.open('app/assets/images/moai_statues.jpeg'), filename: 'moai_statues.jpeg', content_type: 'image/jpeg')
event_hoa_5.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_5.save!

event_hoa_6 = Event.new(date: "2021", description: "Currently, the Hoa Hakananai'a sits in the Wellcome Trust Gallery at the British Museum (Room 24: Living and Dying).")
event_hoa_6.photo.attach(io: File.open('app/assets/images/hoa_wellcome.jpeg'), filename: 'hoa_wellcome.jpeg', content_type: 'image/jpeg')
event_hoa_6.artefact_id = artefact_array.find_by(name: "Hoa Hakananai'a").id
event_hoa_6.save!
puts "created events for Hoa Hakananai'a"

puts "creating events for Moai Head"
event_moai_head_1 = Event.new(date: "1000 - 1200 C.E.", description: "No Easter Island statues have been scientifically dated, but statue making in general is said to have begun by at least 1000 C.E., and occurred mostly between 1300 and 1500 C.E. Manufacture is said to have ended by 1600 C.E., when islanders began to topple them.")
event_moai_head_1.photo.attach(io: File.open('app/assets/images/moai.jpeg'), filename: 'moai.jpeg', content_type: 'image/jpeg')
event_moai_head_1.artefact_id = artefact_array.find_by(name: "Moai Head").id
event_moai_head_1.save!

event_moai_head_2 = Event.new(date: "1881", description: "These archaeological pieces, as archives indicate, were carried from Rapa Nui to Tahiti in 1881 by the merchant ship ???Nautilus???, together with three crates of ???curiosities??? destined to Maison Brander in Pape.")
event_moai_head_2.photo.attach(io: File.open('app/assets/images/Moai_statue_on_boat.jpeg'), filename: 'Moai_statue_on_boat.jpeg', content_type: 'image/jpeg')
event_moai_head_2.artefact_id = artefact_array.find_by(name: "Moai Head").id
event_moai_head_2.save!

event_moai_head_3 = Event.new(date: "1928", description: "Brander sold the moai to the Washington Museum, which was attempting to open a new collection made up of cultural material from Oceania.")
event_moai_head_3.photo.attach(io: File.open('app/assets/images/Moai_statues_in_group.jpeg'), filename: 'Moai_statues_in_group.jpeg', content_type: 'image/jpeg')
event_moai_head_3.artefact_id = artefact_array.find_by(name: "Moai Head").id
event_moai_head_3.save!

event_moai_head_4 = Event.new(date: "1930", description: "Aquired by the Washington Museum and shipped from Tahiti to the United States to be exhibited in a new ???Pacific Cultures Gallery??? at the Washington Museum which was opened in April of 1930.")
event_moai_head_4.photo.attach(io: File.open('app/assets/images/Moai_head_inOtago_museum.jpeg'), filename: 'Moai_head_inOtago_museum.jpeg', content_type: 'image/jpeg')
event_moai_head_4.artefact_id = artefact_array.find_by(name: "Moai Head").id
event_moai_head_4.save!

puts "created events for Moai Head"

puts "creating events for Moai Statue"
event_moai_statue_1 = Event.new(date: "1000 - 1200 C.E.", description: "No Easter Island statues have been scientifically dated, but statue making in general is said to have begun by at least 1000 C.E., and occurred mostly between 1300 and 1500 C.E. Manufacture is said to have ended by 1600 C.E., when islanders began to topple them.")
event_moai_statue_1.photo.attach(io: File.open('app/assets/images/moai.jpeg'), filename: 'moai.jpeg', content_type: 'image/jpeg')
event_moai_statue_1.artefact_id = artefact_array.find_by(name: "Moai Statue").id
event_moai_statue_1.save!

event_moai_statue_2 = Event.new(date: "1934", description: "This fragment was taken from Rapa Nui in 1935 by Alfred M??traux and Henri Lavachery, who were the first professional archaeologists to visit Easter Island.")
event_moai_statue_2.photo.attach(io: File.open('app/assets/images/Moai_statue_on_boat.jpeg'), filename: 'Moai_statue_on_boat.jpeg', content_type: 'image/jpeg')
event_moai_statue_2.artefact_id = artefact_array.find_by(name: "Moai Statue").id
event_moai_statue_2.save!

event_moai_statue_3 = Event.new(date: "1935", description: "Presented to the Chilean government by Henri Lavachery and Alfred Metraux for the Mus??e de l'Homme after their expedition to Rapa Nui")
event_moai_statue_3.photo.attach(io: File.open('app/assets/images/moai_statues.jpeg'), filename: 'moai_statues.jpeg', content_type: 'image/jpeg')
event_moai_statue_3.artefact_id = artefact_array.find_by(name: "Moai Statue").id
event_moai_statue_3.save!

event_moai_statue_4 = Event.new(date: "2018", description: "French President Emanuel Macron pledged to return artefacts that are currently curated in French museums back to their country of origin.")
event_moai_statue_4.photo.attach(io: File.open('app/assets/images/louvre_museum.jpeg'), filename: 'louvre_museum.jpeg', content_type: 'image/jpeg')
event_moai_statue_4.artefact_id = artefact_array.find_by(name: "Moai Statue").id
event_moai_statue_4.save!

event_moai_statue_5 = Event.new(date: "2021", description: "To date France have returned no artefacts.")
event_moai_statue_5.photo.attach(io: File.open('app/assets/images/moai_louvre_2.jpeg'), filename: 'moai_louvre_2.jpeg', content_type: 'image/jpeg')
event_moai_statue_5.artefact_id = artefact_array.find_by(name: "Moai Statue").id
event_moai_statue_5.save!

puts "created events for Moai Statue"


puts "creating events for Queen Nefertiti"
event_queen_1 = Event.new(date: "1345 B.C.", description: "The bust of Nefertiti, Queen of the 18th Dynasty of Ancient Egypt, was sculpted by the sculptor Thutmose. Little is known about Nefertiti, the Great Royal Wife of Egyptian Pharaoh Akhenaten, but she is thought to have been the co-regent of Egypt or perhaps even a pharaoh in her own right after the death of her husband.")
event_queen_1.photo.attach(io: File.open('app/assets/images/nefertiti_1.jpeg'), filename: 'nefertiti_1.jpeg', content_type: 'image/jpeg')
event_queen_1.artefact_id = artefact_array.find_by(name: "Bust of Queen Nefertiti").id
event_queen_1.save!

event_queen_2 = Event.new(date: "6 December 1912", description: "The bust of Nefertiti was discovered at Amarna by a German team led by archaeologist Ludwig Borchardt. It was found in what had been the workshop of the sculptor Thutmose, along with other unfinished busts of Nefertiti. Borchardt is accused of illegally smuggling the sculpture out of Egypt in 1913, in breach of conventions on archaeological finds. Borchardt is also suspected of concealing the bust's real value and lying about the materials it was made from to mislead Egypt's chief antiques inspector.")
event_queen_2.photo.attach(io: File.open('app/assets/images/nefertiti_2.jpeg'), filename: 'nefertiti_2.jpeg', content_type: 'image/jpeg')
event_queen_2.artefact_id = artefact_array.find_by(name: "Bust of Queen Nefertiti").id
event_queen_2.save!

event_queen_3 = Event.new(date: "1913 - 1923", description: "The bust was shipped to Berlin and presented to James Simon, a wholesale merchant and the sponsor of the Amarna excavation. It was permanently donated to the Berlin Museum in 1920, but was kept secret from the public from 1913 - 1923 at the request of Borchardt.")
event_queen_3.photo.attach(io: File.open('app/assets/images/nefertiti_3.jpeg'), filename: 'nefertiti_3.jpeg', content_type: 'image/jpeg')
event_queen_3.artefact_id = artefact_array.find_by(name: "Bust of Queen Nefertiti").id
event_queen_3.save!

event_queen_4 = Event.new(date: "1924 - 2009", description: "In 1924, the bust was displayed to the public for the first time as part of the Egyptian Museum of Berlin. The bust created a sensation, swiftly becoming a world-renowned icon of feminine beauty and one of the most universally recognised artifacts to survive from Ancient Egypt. From there it went on to be displayed in many other museums across Germany, except for a period during World War II when it was moved to a secure shelter for safekeeping.")
event_queen_4.photo.attach(io: File.open('app/assets/images/nefertiti_4.jpeg'), filename: 'nefertiti_4.jpeg', content_type: 'image/jpeg')
event_queen_4.artefact_id = artefact_array.find_by(name: "Bust of Queen Nefertiti").id
event_queen_4.save!

event_queen_5 = Event.new(date: "October 2009 - Present", description: "The bust returned to the Neues Museum as its centerpiece when the museum reopened in October 2009. Egypt has attempted since the early 1920s to retrieve the bust from the Germans without success. As recently as September 2020 the Minister of Tourism and Antiquities, Khaled al-Anani, reiterated Cairo's intention to repatriate the bust. In a television appearance, Anani said Germany had rebuffed a request to return the bust to Egypt, but gave him five other antiques for repatriation instead.")
event_queen_5.photo.attach(io: File.open('app/assets/images/nefertiti_5.jpeg'), filename: 'nefertiti_5.jpeg', content_type: 'image/jpeg')
event_queen_5.artefact_id = artefact_array.find_by(name: "Bust of Queen Nefertiti").id
event_queen_5.save!
puts "created events for Queen Nefertiti"











