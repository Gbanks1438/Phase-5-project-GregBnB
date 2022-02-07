Reservation.destroy_all
RoomAmenity.destroy_all
Room.destroy_all
Property.destroy_all
Amenity.destroy_all
User.destroy_all
#  !!  We Destroy_all In REVERSE ORDER

puts "🏕 Seeding Users..."


puts "🏕 Seeding Reservations..."

reservation1 = Reservation.create(
    num_guests: 14,
    start_date: DateTime.strptime("09/26/2022 17:00", "%m/%d/%Y %H:%M"),
    end_date: DateTime.strptime("10/02/2022 19:00", "%m/%d/%Y %H:%M"),
    user_id: 1,
    property_id: 1
)

reservation2 = Reservation.create(
    num_guests: 8,
    start_date: DateTime.strptime("11/23/2022 17:00", "%m/%d/%Y %H:%M"),
    end_date: DateTime.strptime("11/27/2022 19:00", "%m/%d/%Y %H:%M"),
    user_id: 1,
    property_id: 2
)

reservation3 = Reservation.create(
    num_guests: 6,
    start_date: DateTime.strptime("12/22/2022 17:00", "%m/%d/%Y %H:%M"),
    end_date: DateTime.strptime("12/26/2022 19:00", "%m/%d/%Y %H:%M"),
    user_id: 1,
    property_id: 3
)

puts "🏕 Seeding Properties..."

property1 = Property.create(
    name: "Lake House",
    address: "Big Bowman Pond, NY",
    img_url: "https://wallpapercave.com/wp/wp4432733.jpg",
    has_cell_reception: "Fair signal - 4G LTE"
)

property2 = Property.create(
    name: "Adirondack Mountain Lodge",
    address: "Lake Placid, NY",
    img_url: "https://wallpaperaccess.com/full/918143.jpg",
    has_cell_reception: "Strong signal - 5G LTE"
)

property3 = Property.create(
    name: "Fire Island Beach House",
    address: "Ocean Beach LI, NY",
    img_url: "https://images.butlerarmsden.com/work/Stinson-Color-Fix/_projectBanner/Butler_Armsden_Scavullo-Stinson-0184.jpg",
    has_cell_reception: "Poor signal - 4G LTE"
)

puts "🏕 Seeding Rooms..."

room1 = Room.create(
    room_num: 1,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://www.thelilypadcottage.com/wp-content/uploads/2018/05/white-lake-house-living-room-decor-1.jpg",
    room_type: "Living Room",
    property_id: 1
)

room2 = Room.create(
    room_num: 2,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://alamaisonaccents.files.wordpress.com/2020/03/cross-lake-house-kitchen-4-better-prof.jpg",
    room_type: "Kitchen",
    property_id: 1
)

room3 = Room.create(
    room_num: 3,
    floor_num: 1,
    num_of_beds: 1,
    bed_size: "King Mattress",
    img_url: "https://studio-mcgee.com/app/uploads/2020/09/studiomcgee_lakehouse_194.jpg",
    room_type: "Master Suite",
    property_id: 1
)

room4 = Room.create(
    room_num: 4,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://studio-mcgee.com/app/uploads/2020/09/studiomcgee_lakehouse_239_302c79f495642bac1f362cb553b9a25a.jpg",
    room_type: "Bathroom",
    property_id: 1
)

room5 = Room.create(
    room_num: 5,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://keyes-plumbing.com/wp-content/uploads/2017/01/Kirby_9.27.161842-e1485462229979.jpg",
    room_type: "Laundry",
    property_id: 1
)

room6 = Room.create(
    room_num: 6,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://cdn.decorpad.com/photos/2019/09/16/lake-house-work-space-with-maple-wood-top-island.jpg",
    room_type: "Office",
    property_id: 1
)

room7 = Room.create(
    room_num: 7,
    floor_num: 0,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://www.thelilypadcottage.com/wp-content/uploads/2018/02/lake-house-family-room-basement-8.jpg",
    room_type: "Basement",
    property_id: 1
)

room8 = Room.create(
    room_num: 8,
    floor_num: 0,
    num_of_beds: 3,
    bed_size: "Full Mattresses",
    img_url: "https://foter.com/photos/401/l-shaped-bunk-beds-for-triplets-in-white.jpeg",
    room_type: "Bedroom",
    property_id: 1
)

room9 = Room.create(
    room_num: 9,
    floor_num: 0,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://st.hzcdn.com/simgs/pictures/bathrooms/lake-house-guest-bath-crystal-kitchen-bath-img~7681cdde0f108575_9-8263-1-fbc2cbd.jpg",
    room_type: "Bathroom",
    property_id: 1
)

room10 = Room.create(
    room_num: 10,
    floor_num: 2,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://i.pinimg.com/originals/44/f4/ed/44f4ed30a51a781757851bb25229cbe6.jpg",
    room_type: "Bathroom",
    property_id: 1
)

room11 = Room.create(
    room_num: 11,
    floor_num: 2,
    num_of_beds: 1,
    bed_size: "Queen Mattress",
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeCUWghb90Raja_Yb0trhQnvS_Xw2KLVdCag&usqp=CAU",
    room_type: "Bedroom",
    property_id: 1
)

room12 = Room.create(
    room_num: 12,
    floor_num: 2,
    num_of_beds: 1,
    bed_size: "Queen Mattress",
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzMWX-zB1ThSk8yPd009Jf0TkPg4Nldbv8lg&usqp=CAU",
    room_type: "Bedroom",
    property_id: 1
)

room13 = Room.create(
    room_num: 13,
    floor_num: -1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://i.pinimg.com/474x/4f/c7/9c/4fc79c8f2dc446aa81f1937b58847dae.jpg",
    room_type: "Garage",
    property_id: 1
)

room14 = Room.create(
    room_num: 1,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://st.hzcdn.com/simgs/pictures/living-rooms/timeless-adirondack-style-ann-stillman-o-leary-img~b411d4460bd73750_14-5608-1-a13c719.jpg",
    room_type: "Living Room",
    property_id: 2
)

room15 = Room.create(
    room_num: 2,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://st.hzcdn.com/simgs/pictures/kitchens/timeless-adirondack-style-ann-stillman-o-leary-img~30a140fa0bd73767_9-6012-1-448184c.jpg",
    room_type: "Kitchen",
    property_id: 2
)

room16 = Room.create(
    room_num: 3,
    floor_num: 1,
    num_of_beds: 1,
    bed_size: "King Mattress",
    img_url: "https://gallery.streamlinevrs.com/units-gallery/00/04/7D/image_153732532.jpeg",
    room_type: "Master Suite",
    property_id: 2
)

room17 = Room.create(
    room_num: 4,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rustic-bathrooms-4-1561402515.jpg",
    room_type: "Bathroom",
    property_id: 2
)

room18 = Room.create(
    room_num: 5,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://i.pinimg.com/originals/2d/79/14/2d7914e9a72f051eb23ce01fe3657655.jpg",
    room_type: "Laundry",
    property_id: 2
)

room19 = Room.create(
    room_num: 6,
    floor_num: 2,
    num_of_beds: 2,
    bed_size: "Full Mattresses",
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuH8DVXlnxgQHS48DJi1CQebgOWVI75ta78A&usqp=CAU",
    room_type: "Bedroom",
    property_id: 2
)

room20 = Room.create(
    room_num: 7,
    floor_num: 2,
    num_of_beds: 2,
    bed_size: "Full Mattresses",
    img_url: "https://www.loghome.com/assets/img/cache/Miller-16-256x288.jpg",
    room_type: "Bedroom",
    property_id: 2
)

room21 = Room.create(
    room_num: 8,
    floor_num: -1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://static.wixstatic.com/media/e33e3a_c86bb74c33e64b37beefa73b05938c6f~mv2_d_4000_2848_s_4_2.jpg/v1/fill/w_1600,h_1139,al_c,q_90/file.jpg",
    room_type: "Garage",
    property_id: 2
)

room22 = Room.create(
    room_num: 1,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://sugarsbeach.com/wp-content/uploads/2018/09/Beach-Haven-New-Jersey-House-Living-Room.jpg",
    room_type: "Living Room",
    property_id: 3
)

room23 = Room.create(
    room_num: 2,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://www.thespruce.com/thmb/nS5QufZx_fHNGTNZD4-o2fOs-OI=/2208x1242/smart/filters:no_upscale()/RGP-0036-6a2cd4ec7e904a96a8f7ba0639402b5b.jpeg",
    room_type: "Kitchen",
    property_id: 3
)

room24 = Room.create(
    room_num: 3,
    floor_num: 1,
    num_of_beds: 1,
    bed_size: "King Mattress",
    img_url: "https://i.ytimg.com/vi/yzXtITmwUp0/hqdefault.jpg",
    room_type: "Master Suite",
    property_id: 3
)

room25 = Room.create(
    room_num: 4,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVSg5St0O7aEsEwfNGwF2-Ztcu5FAeb934675STigwl8CbSxBsvdBjVmPYqO1S6pJnqbQ&usqp=CAU",
    room_type: "Bathroom",
    property_id: 3
)

room26 = Room.create(
    room_num: 5,
    floor_num: 1,
    num_of_beds: 0,
    bed_size: "n/a",
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3IIGYWuycJI7TroaeesTZz3ULjhjHtzm31g&usqp=CAU",
    room_type: "Laundry",
    property_id: 3
)

room27 = Room.create(
    room_num: 6,
    floor_num: 1,
    num_of_beds: 2,
    bed_size: "Full Mattresses",
    img_url: "https://images.squarespace-cdn.com/content/v1/59e9f6d1b07869a5b50bfd1e/1518697692618-ACKNMQ90WKQFYM19W3RC/Final+Bunk+Room+2.13.18.jpg?format=1000w",
    room_type: "Bedroom",
    property_id: 3
)

puts "🏕 Seeding Room Amenities..."

room_amenity1 = RoomAmenity.create(
	room_id: 1, 
	amenity_id: 3,
	amenity_id: 4,
	amenity_id: 11,
    amenity_id: 12,
	amenity_id: 14,
	amenity_id: 15,
	amenity_id: 18                                         
)

room_amenity2 = RoomAmenity.create(
	room_id: 2, 
    amenity_id: 8,
	amenity_id: 11,
    amenity_id: 12, 
    amenity_id: 14                                      
)

room_amenity3 = RoomAmenity.create(
	room_id: 3, 
    amenity_id: 1,
	amenity_id: 2,
    amenity_id: 4, 
    amenity_id: 5, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14, 
    amenity_id: 15, 
    amenity_id: 18                                     
)

room_amenity4 = RoomAmenity.create(
	room_id: 4, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 14                                    
)

room_amenity5 = RoomAmenity.create(
	room_id: 5, 
    amenity_id: 8, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14,
    amenity_id: 21                                   
)

room_amenity6 = RoomAmenity.create(
	room_id: 6, 
    amenity_id: 4, 
    amenity_id: 6, 
    amenity_id: 7, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14, 
    amenity_id: 21                                    
)

room_amenity7 = RoomAmenity.create(
	room_id: 7, 
    amenity_id: 3, 
    amenity_id: 10, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14, 
    amenity_id: 15,
    amenity_id: 17,
    amenity_id: 21                                    
)

room_amenity8 = RoomAmenity.create(
	room_id: 8, 
    amenity_id: 4, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14                                  
)

room_amenity9 = RoomAmenity.create(
	room_id: 9, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 14                                   
)

room_amenity10 = RoomAmenity.create(
	room_id: 10, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 14                                   
)

room_amenity11 = RoomAmenity.create(
	room_id: 11, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14                                   
)

room_amenity12 = RoomAmenity.create(
	room_id: 12, 
    amenity_id: 11, 
    amenity_id: 12, 
    amenity_id: 13, 
    amenity_id: 14                                   
)

room_amenity13 = RoomAmenity.create(
	room_id: 13, 
    amenity_id: 9, 
    amenity_id: 10, 
    amenity_id: 14, 
    amenity_id: 16,
    amenity_id: 21
)

room_amenity14 = RoomAmenity.create(
	room_id: 14, 
    amenity_id: 3, 
    amenity_id: 4, 
    amenity_id: 6, 
    amenity_id: 7, 
    amenity_id: 12,
    amenity_id: 13,
    amenity_id: 14,
    amenity_id: 15
)

room_amenity15 = RoomAmenity.create(
	room_id: 15, 
    amenity_id: 12, 
    amenity_id: 14
)

room_amenity16 = RoomAmenity.create(
	room_id: 16, 
    amenity_id: 1, 
    amenity_id: 2, 
    amenity_id: 4, 
    amenity_id: 11,
    amenity_id: 12,
    amenity_id: 13,
    amenity_id: 14,
    amenity_id: 15,
    amenity_id: 18
)

room_amenity17 = RoomAmenity.create(
	room_id: 17, 
    amenity_id: 12, 
    amenity_id: 14
)

room_amenity18 = RoomAmenity.create(
	room_id: 18, 
    amenity_id: 8,
    amenity_id: 12, 
    amenity_id: 14,
    amenity_id: 21
)

room_amenity19 = RoomAmenity.create(
	room_id: 19, 
    amenity_id: 8,
    amenity_id: 12, 
    amenity_id: 13,
    amenity_id: 14
)

room_amenity20 = RoomAmenity.create(
	room_id: 20, 
    amenity_id: 8,
    amenity_id: 12, 
    amenity_id: 13,
    amenity_id: 14
)

room_amenity21 = RoomAmenity.create(
	room_id: 21, 
    amenity_id: 9,
    amenity_id: 10, 
    amenity_id: 16,
    amenity_id: 17,
    amenity_id: 20,
    amenity_id: 21
)

room_amenity22 = RoomAmenity.create(
	room_id: 22, 
    amenity_id: 3,
    amenity_id: 4, 
    amenity_id: 6,
    amenity_id: 7,
    amenity_id: 11,
    amenity_id: 13,
    amenity_id: 14,
    amenity_id: 15,
    amenity_id: 16,
    amenity_id: 17
)

room_amenity23 = RoomAmenity.create(
	room_id: 23, 
    amenity_id: 11,
    amenity_id: 13,
    amenity_id: 14
)

room_amenity24 = RoomAmenity.create(
	room_id: 24, 
    amenity_id: 1,
    amenity_id: 2, 
    amenity_id: 4,
    amenity_id: 5,
    amenity_id: 11,
    amenity_id: 13,
    amenity_id: 14,
    amenity_id: 15,
    amenity_id: 18
)

room_amenity25 = RoomAmenity.create(
	room_id: 25, 
    amenity_id: 11,
    amenity_id: 14
)

room_amenity26 = RoomAmenity.create(
	room_id: 26, 
    amenity_id: 8,
    amenity_id: 11,
    amenity_id: 13,
    amenity_id: 14,
    amenity_id: 21
)

room_amenity27 = RoomAmenity.create(
	room_id: 27, 
    amenity_id: 11,
    amenity_id: 13,
    amenity_id: 14,
    amenity_id: 19
)

puts "🏕 Seeding Amenities..."

amenity1 = Amenity.create(
	amenity_type: "Ensuite"
)

amenity2 = Amenity.create(
	amenity_type: "Hot Tub"
)

amenity3 = Amenity.create(
	amenity_type: "Couch"
)

amenity4 = Amenity.create(
	amenity_type: "Shay Lounge"
)

amenity5 = Amenity.create(
	amenity_type: "Steam Room"
)

amenity6 = Amenity.create(
	amenity_type: "Library"
)

amenity7 = Amenity.create(
	amenity_type: "Reading-nook"
)

amenity8 = Amenity.create(
	amenity_type: "Laundry"
)

amenity9 = Amenity.create(
	amenity_type: "Parking"
)

amenity10 = Amenity.create(
	amenity_type: "Gym"
)

amenity11 = Amenity.create(
	amenity_type: "Air Conditioning"
)

amenity12 = Amenity.create(
	amenity_type: "Heating"
)

amenity13 = Amenity.create(
	amenity_type: "Cable TV"
)

amenity14 = Amenity.create(
	amenity_type: "High Speed Internet"
)

amenity15 = Amenity.create(
	amenity_type: "Fireplace"
)

amenity16 = Amenity.create(
	amenity_type: "Fire pit"
)

amenity17 = Amenity.create(
	amenity_type: "Patio"
)

amenity18 = Amenity.create(
	amenity_type: "Deck"
)

amenity19 = Amenity.create(
	amenity_type: "Porch"
)

amenity20 = Amenity.create(
	amenity_type: "Pool"
)

amenity21 = Amenity.create(
	amenity_type: "Equipment Room"
)

puts "🏕 Seeding Room Activities..."

activity1 = Activity.create(
    name: "The Towne Tavern",
	category: "Dining",
    url: "https://www.thetownetavern.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity2 = Activity.create(
    name: "Beer Diviner",
	category: "Dining",
    url: "https://www.facebook.com/TheBeerDiviner/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity3 = Activity.create(
    name: "Brad's Pizza",
	category: "Dining",
    url: "https://ajspizzeriany.weebly.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity4 = Activity.create(
    name: "La Perla",
	category: "Dining",
    url: "http://www.gregoryhouse.com/laperla/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity5 = Activity.create(
    name: "Paula's Country Kitchen",
	category: "Dining",
    url: "https://www.paulascountrykitchen.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity6 = Activity.create(
    name: "Lakeview On Crystal Lake",
	category: "Dining",
    url: "https://www.crystallakeview.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity7 = Activity.create(
    name: "Mess Hall",
	category: "Dining",
    url: "https://www.messhall518.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity8 = Activity.create(
    name: "Tighe's Bistro Americain",
	category: "Dining",
    url: "https://www.tighesbistroamericain.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity9 = Activity.create(
    name: "The Old Daley on Crooked Lake",
	category: "Dining",
    url: "https://www.olddaley.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity10 = Activity.create(
    name: "Gipfel Coffee Company",
	category: "Dining",
    url: "https://www.gipfelcoffee.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity11 = Activity.create(
    name: "Paolo Lombardi's",
	category: "Dining",
    url: "https://www.paololombardis.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity12 = Activity.create(
    name: "Tipsy Moose",
	category: "Dining",
    url: "https://tipsymoosetavern.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity13 = Activity.create(
    name: "Garlic Lovers Corner",
	category: "Dining",
    url: "https://garlicloverscorner.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity14 = Activity.create(
    name: "Alexis Diner",
	category: "Dining",
    url: "https://www.alexisdiner.us/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity15 = Activity.create(
    name: "Brown's Brewing Co.",
	category: "Dining",
    url: "https://www.brownsbrewing.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity16 = Activity.create(
    name: "Dinosaur BBQ",
	category: "Dining",
    url: "https://www.dinosaurbarbque.com/troy/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity17 = Activity.create(
    name: "Wolff's Beer Biergarten",
	category: "Dining",
    url: "https://www.wolffsbiergarten.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity18 = Activity.create(
    name: "Junior's Bar & Grill",
	category: "Dining",
    url: "https://www.juniorsbarandgrill.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity19 = Activity.create(
    name: "Ted's Fish Fry",
	category: "Dining",
    url: "https://www.tedsfishfry.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity20 = Activity.create(
    name: "677 Prime Premire Steakhouse",
	category: "Dining",
    url: "https://www.677prime.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity21 = Activity.create(
    name: "Plum Blossom",
	category: "Dining",
    url: "https://www.facebook.com/The-Plum-Blossom-Restaurant-366108910071044/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity22 = Activity.create(
    name: "Troy Beer Garden",
	category: "Dining",
    url: "https://thetroybeergarden.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity23 = Activity.create(
    name: "Plumb Oyster Bar",
	category: "Dining",
    url: "https://www.plumb.bar/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity24 = Activity.create(
    name: "Ryan's Wake Public House",
	category: "Dining",
    url: "http://www.ryanswake.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity25 = Activity.create(
    name: "Udderly Ice Cream",
	category: "Dining",
    url: "https://www.facebook.com/udderlyicecream21/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity26 = Activity.create(
    name: "Troy Country Club",
	category: "Dining",
    url: "https://www.countrycluboftroy.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity27 = Activity.create(
    name: "Visit June Farms",
	category: "Activities",
    url: "https://junefarms.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity28 = Activity.create(
    name: "Visit Winding Creek Farms",
	category: "Activities",
    url: "https://www.windingcreekfarms.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity29 = Activity.create(
    name: "Golf at the Troy Country Club",
	category: "Activities",
    url: "https://www.countrycluboftroy.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity30 = Activity.create(
    name: "Watch a movie at the Hollywood Drive-In",
	category: "Activities",
    url: "http://www.hollywooddrivein.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity31 = Activity.create(
    name: "Visit the Poestenkill Farmers Market",
	category: "Activities",
    url: "http://www.poestenkillfarmersmarket.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity32 = Activity.create(
    name: "Visit the Troy Waterfront Farmers Market",
	category: "Activities",
    url: "https://www.troymarket.org/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity33 = Activity.create(
    name: "Walk the boulevards of Saratoga Springs",
	category: "Activities",
    url: "https://www.saratoga-springs.org/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity34 = Activity.create(
    name: "Hike the escarpment trail at Cherry Plains",
	category: "Activities",
    url: "https://parks.ny.gov/documents/parks/CherryPlainTrailMap.pdf",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity35 = Activity.create(
    name: "Cherry Plain State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/cherryplain/maps.aspx",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity36 = Activity.create(
    name: "Schodack Island State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/schodackisland/maps.aspx",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity37 = Activity.create(
    name: "Peebles Island State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/peeblesisland/maps.aspx",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity38 = Activity.create(
    name: "John Boyd Thacher State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/128/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity39 = Activity.create(
    name: "Mohawk River State Park",
	category: "Parks",
    url: "https://www.niskayuna.org/parks/pages/mohawk-river-state-park",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity40 = Activity.create(
    name: "Grafton Lakes State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/graftonlakes",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity41 = Activity.create(
    name: "Pittsfield MA State Forest",
	category: "Parks",
    url: "https://www.mass.gov/locations/pittsfield-state-forest",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity42 = Activity.create(
    name: "Taconic State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/taconiccopake/details.aspx",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity43 = Activity.create(
    name: "Saratoga Spa State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/saratogaspa",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity44 = Activity.create(
    name: "Albany Pine Bush Preserve",
	category: "Parks",
    url: "https://www.albanypinebush.org/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity45 = Activity.create(
    name: "Albany Corning Preserve",
	category: "Parks",
    url: "https://www.albany.org/listing/albany-corning-preserve-jennings-landing/159/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity46 = Activity.create(
    name: "Kinderhook Creek Preserve",
	category: "Parks",
    url: "https://www.renstrust.org/explore/preserves/public-preserves/13-kinderhook-creek-preserve",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity47 = Activity.create(
    name: "Cohoes Falls Overlook Park",
	category: "Parks",
    url: "https://www.ci.cohoes.ny.us/314/Overlook-Park-Falls-View-Park/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity48 = Activity.create(
    name: "Cumberland Farms Gas Station",
	category: "Shopping",
    url: "https://www.cumberlandfarms.com/stores/ny/sand-lake-1521",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity49 = Activity.create(
    name: "Stewart's Shop",
	category: "Shopping",
    url: "https://www.stewartsshops.com/shop/west-sand-lake-338/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity50 = Activity.create(
    name: "Hannaford Supermarket",
	category: "Shopping",
    url: "https://www.hannaford.com/locations/west-sand-lake-hannaford-20726",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity51 = Activity.create(
    name: "ShopRite Supermarket",
	category: "Shopping",
    url: "https://www.facebook.com/ShopRite.NorthGreenbush/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity52 = Activity.create(
    name: "NY Wine & Liquor Warehouse",
	category: "Shopping",
    url: "https://www.nywineandliquorwarehouse.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity53 = Activity.create(
    name: "Walmart",
	category: "Shopping",
    url: "https://www.walmart.com/store/1940-east-greenbush-ny",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity54 = Activity.create(
    name: "Target",
	category: "Shopping",
    url: "https://www.target.com/sl/east-greenbush/1796",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity55 = Activity.create(
    name: "The Home Depot",
	category: "Shopping",
    url: "https://www.homedepot.com/l/N-Greenbush/NY/Rensselaer/12144/1263",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity56 = Activity.create(
    name: "MoHawk Army/Navy",
	category: "Shopping",
    url: "https://mohawkarmynavy.com/",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity57 = Activity.create(
    name: "Tremont Lumber & Hardware",
	category: "Shopping",
    url: "https://www.acehardware.com/store-details/06202",
    location: "West Sand Lake N.Y.",
    property_id: "1"
)

activity58 = Activity.create(
    name: "Emma's Lake Placid Creamery",
	category: "Dining",
    url: "https://emmaslakeplacidcreamery.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity59 = Activity.create(
    name: "Adirondack Corer Store & Deli",
	category: "Dining",
    url: "https://www.adkcornerstore.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity60 = Activity.create(
    name: "Big Mountain Deli & Creperie",
	category: "Dining",
    url: "https://www.eatlakeplacid.com/location/big-mountain-deli/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity61 = Activity.create(
    name: "Great Adirondack Brewing Company",
	category: "Dining",
    url: "https://adirondackbrewing.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity62 = Activity.create(
    name: "Big Slide Brewery & Public House",
	category: "Dining",
    url: "https://www.bigslidebrewery.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity63 = Activity.create(
    name: "The Breakfast Club",
	category: "Dining",
    url: "https://www.thebcetc.com/?fbclid=IwAR2WDJrluzjvMxBfU82_kxv-pCEwT8Whb0e5DXfYm_B8QjRkanmA-LKZlwU",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity64 = Activity.create(
    name: "The Cottage Cafe",
	category: "Dining",
    url: "https://mirrorlakeinn.com/dining/the-cottage/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity65 = Activity.create(
    name: "Lisa G's",
	category: "Dining",
    url: "https://www.lisags.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity66 = Activity.create(
    name: "Top Of The Park",
	category: "Dining",
    url: "https://www.topofthepark.bar/small-plate-selection",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity67 = Activity.create(
    name: "Salt of the Earth Bistro",
	category: "Dining",
    url: "https://www.saltoftheearthbistro.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity68 = Activity.create(
    name: "The View Restaurant",
	category: "Dining",
    url: "https://mirrorlakeinn.com/dining/the-view/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity69 = Activity.create(
    name: "Redneck Bistro",
	category: "Dining",
    url: "https://www.facebook.com/Redneck-Bistro-BBQ-Grill-400182310087343/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity70 = Activity.create(
    name: "Smoke Signals",
	category: "Dining",
    url: "https://www.smokesignalsq.com/home",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity71 = Activity.create(
    name: "Caffe Rustica",
	category: "Dining",
    url: "https://www.cafferustica.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity72 = Activity.create(
    name: "Wyatt's",
	category: "Dining",
    url: "https://www.facebook.com/wyattslakeplacid",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity73 = Activity.create(
    name: "Visit the Lake Placid Olympic Museum",
	category: "Activities",
    url: "http://www.lpom.org/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity74 = Activity.create(
    name: "Ski at Whiteface Mountain",
	category: "Activities",
    url: "https://whiteface.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity75 = Activity.create(
    name: "Visit High Falls Gorge",
	category: "Activities",
    url: "https://highfallsgorge.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity76 = Activity.create(
    name: "Visit the Herb Brooks Arena",
	category: "Activities",
    url: "https://lakeplacidlegacysites.com/legacy-sites/olympic-center/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity77 = Activity.create(
    name: "Walk the Brewster Peninsula Nature Trail",
	category: "Activities",
    url: "https://www.lakeplacid.com/hiking/peninsula-nature-trails",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity78 = Activity.create(
    name: "Hike Mt. Jo",
	category: "Activities",
    url: "https://www.alltrails.com/trail/us/new-york/mount-jo-loop-trail",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity79 = Activity.create(
    name: "Visit the John Brown Farm State Historic Site",
	category: "Activities",
    url: "https://parks.ny.gov/historic-sites/johnbrownfarm/amenities.aspx",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity80 = Activity.create(
    name: "Catch a movie",
	category: "Activities",
    url: "https://www.cinemaclock.com/theatres/palace-theatre-lake-placid",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity81 = Activity.create(
    name: "Rent a padle boat",
	category: "Activities",
    url: "http://www.mlboatrental.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity81 = Activity.create(
    name: "Drive Whiteface Veteran's Memorial Highway",
	category: "Activities",
    url: "https://whiteface.com/todo/whiteface-veterans-memorial-highway/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity82 = Activity.create(
    name: "Tour the Lake Placid Marina",
	category: "Activities",
    url: "https://www.lakeplacid.com/do/activities/lake-placid-boat-tours-marina",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity83 = Activity.create(
    name: "Mirror Lake",
	category: "Parks",
    url: "https://www.lakeplacid.com/paddling/mirror-lake",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity84 = Activity.create(
    name: "Saranac Lakes Wild Forest",
	category: "Parks",
    url: "https://www.dec.ny.gov/lands/114330.html",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity85 = Activity.create(
    name: "High Peaks Wilderness",
	category: "Parks",
    url: "https://www.dec.ny.gov/lands/9164.html",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity86 = Activity.create(
    name: "Wilmington Wild Forest",
	category: "Parks",
    url: "https://www.dec.ny.gov/lands/88875.html",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity87 = Activity.create(
    name: "McKenzie Mountain Wilderness",
	category: "Parks",
    url: "https://www.dec.ny.gov/lands/105647.html",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity88 = Activity.create(
    name: "Sentinel Range Wilderness",
	category: "Parks",
    url: "https://www.dec.ny.gov/lands/101901.html",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity89 = Activity.create(
    name: "Locker Room 5",
	category: "Shopping",
    url: "https://www.lockerroom5.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity90 = Activity.create(
    name: "Darrah Cooper Jewelers",
	category: "Shopping",
    url: "https://www.darrahcooper.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity91 = Activity.create(
    name: "Adirondack Trading Company",
	category: "Shopping",
    url: "https://www.lakeplacid.com/do/shop/adirondack-trading-company",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity92 = Activity.create(
    name: "Adirondack Decorative Arts & Crafts",
	category: "Shopping",
    url: "http://www.adktrade.com/products.html",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity93 = Activity.create(
    name: "Ruthie's Run",
	category: "Shopping",
    url: "https://www.facebook.com/RuthiesRun/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity94 = Activity.create(
    name: "High Peaks Cyclery",
	category: "Shopping",
    url: "https://www.highpeakscyclery.com/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity95 = Activity.create(
    name: "Critters",
	category: "Shopping",
    url: "https://www.facebook.com/critterslakeplacid/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity96 = Activity.create(
    name: "Bear Essentials Apparel",
	category: "Shopping",
    url: "https://www.facebook.com/BearEssentialsApparel/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity97 = Activity.create(
    name: "Traditions",
	category: "Shopping",
    url: "https://www.lakeplacid.com/do/shop/traditions",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity98 = Activity.create(
    name: "Adirondack Mountain Club",
	category: "Shopping",
    url: "https://adk.org/",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity99 = Activity.create(
    name: "The Olympic Center Store",
	category: "Shopping",
    url: "https://www.lakeplacid.com/do/shop/orda-store",
    location: "Lake Placid ADK",
    property_id: "2"
)

activity100 = Activity.create(
    name: "Rachel's Bakery and Restaurant",
	category: "Dining",
    url: "https://www.rachelsfireisland.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity101 = Activity.create(
    name: "CJ's Restaurant & Bar",
	category: "Dining",
    url: "http://cjsfireisland.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity102 = Activity.create(
    name: "The Island Mermaid",
	category: "Dining",
    url: "https://www.islandmermaid.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity103 = Activity.create(
    name: "Maguire's Bayfront Restaurant",
	category: "Dining",
    url: "https://www.maguiresbayfrontrestaurant.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity104 = Activity.create(
    name: "Castaway Bar & Grill",
	category: "Dining",
    url: "https://www.castawaybarandgrill.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity105 = Activity.create(
    name: "Town Pizza",
	category: "Dining",
    url: "https://www.facebook.com/Town-Pizza-116104561751366/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity106 = Activity.create(
    name: "Matthew's Seafood House",
	category: "Dining",
    url: "http://matthewsseafood.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity107 = Activity.create(
    name: "Albatross",
	category: "Dining",
    url: "https://www.dontswingthelights.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity108 = Activity.create(
    name: "Scoops",
	category: "Dining",
    url: "https://www.scoopsob.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity109 = Activity.create(
    name: "Hideaway Restaurant",
	category: "Dining",
    url: "https://www.facebook.com/hideawayob/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity110 = Activity.create(
    name: "Houser's Bar",
	category: "Dining",
    url: "https://www.housershotel.com/housers-bar",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity111 = Activity.create(
    name: "Flynn's Fire Island",
	category: "Dining",
    url: "http://www.flynnsfireislandny.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity112 = Activity.create(
    name: "Go to a Village event",
	category: "Activities",
    url: "https://villageofoceanbeach.org/new-events",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity113 = Activity.create(
    name: "Enjoy the boardwalk promenade",
	category: "Activities",
    url: "https://villageofoceanbeach.org/about",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity114 = Activity.create(
    name: "Relax on the beach",
	category: "Activities",
    url: "https://www.usharbors.com/harbor/new-york/democrat-point-ny/tides/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity115 = Activity.create(
    name: "Ocean Beach Playground",
	category: "Activities",
    url: "https://foursquare.com/v/ocean-beach-playground/4de261f418385df2b021db2e",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity116 = Activity.create(
    name: "Visit the Fire Island Lighthouse",
	category: "Activities",
    url: "https://www.fireislandlighthouse.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity117 = Activity.create(
    name: "Rent a bike",
	category: "Activities",
    url: "https://www.oceanbeachhardware.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity118 = Activity.create(
    name: "Fire Island",
	category: "Parks",
    url: "https://www.nps.gov/fiis/index.htm",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity119 = Activity.create(
    name: "Robert Moses State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/7/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity120 = Activity.create(
    name: "Jones Beach State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/jonesbeach/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity121 = Activity.create(
    name: "Captree State Park",
	category: "Parks",
    url: "https://parks.ny.gov/parks/captree",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity122 = Activity.create(
    name: "The Sunken Forest",
	category: "Parks",
    url: "https://www.nps.gov/fiis/planyourvisit/sunken-forest.htm",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity123 = Activity.create(
    name: "Sailors Haven",
	category: "Parks",
    url: "https://www.nps.gov/fiis/planyourvisit/sailorshaven.htm",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity124 = Activity.create(
    name: "Kismet Beach",
	category: "Parks",
    url: "https://fireisland.com/beaches/kismet-beach-fire-island/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity125 = Activity.create(
    name: "Davis Park Marina",
	category: "Parks",
    url: "https://www.davisparkmarina.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity126 = Activity.create(
    name: "Salty Stitch Beach Wear",
	category: "Shopping",
    url: "https://www.facebook.com/saltystitch/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity127 = Activity.create(
    name: "Bambootique",
	category: "Shopping",
    url: "https://www.facebook.com/Bambootique-119469964745797/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity128 = Activity.create(
    name: "Kline's",
	category: "Shopping",
    url: "https://www.facebook.com/KlinesFINY/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity129 = Activity.create(
    name: "Flair House",
	category: "Shopping",
    url: "http://www.theflairhouse.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity130 = Activity.create(
    name: "Hanalei and Kula's",
	category: "Shopping",
    url: "https://www.facebook.com/hanaleiandkula/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity131 = Activity.create(
    name: "FiveEightThree",
	category: "Shopping",
    url: "https://www.facebook.com/FiveEightThree/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity132 = Activity.create(
    name: "Ocean Beach Trading Market",
	category: "Shopping",
    url: "https://www.facebook.com/Ocean-Beach-Trading-Market-130361983703854/",
    location: "Fire Island L.I.",
    property_id: "3"
)

activity133 = Activity.create(
    name: "Fire Island Ferries",
	category: "Shopping",
    url: "https://fireislandferries.com/",
    location: "Fire Island L.I.",
    property_id: "3"
)

puts "✅ Done seeding! ✅"