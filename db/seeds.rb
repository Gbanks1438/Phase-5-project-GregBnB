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

puts "✅ Done seeding! ✅"