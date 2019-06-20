User.destroy_all
Movie.destroy_all
Location.destroy_all
MovieScene.destroy_all
Itinerary.destroy_all
ItineraryMovieScene.destroy_all

john_wick = Movie.create(title: "John Wick", city: "New York")

#movie_scenes
marcus_home_scene = MovieScene.create(scene_description: "Marcus’s House")
red_circle_club_scene = MovieScene.create(scene_description: "at Red Circle Club")
church_scene = MovieScene.create(scene_description: "Church Scene")
johns_house_scene = MovieScene.create(scene_description: "John’s House")
final_scene = MovieScene.create(scene_description: "Final Scene")


#locations
marcus_house = Location.create(location_title: "residence", location_address: "160 E 83rd St, Upper East Side, New York, NY", city: "New York")

red_circle_club = Location.create(location_title: "Edison Ballroom", location_address: "240 Wst 47th Street, New York, NY", city: "New York")

church_location = Location.create(location_title: "Saint Francis Xavier Church", location_address: "225 6th Avenue, Brooklyn, New York", city: "New York")

johns_house_location = Location.create( location_title: "residence", location_address: "120 Lower Horseshoe, Mill Neck, New York, NY", city: "New York")

final_scene_location = Location.create( location_title: "Brooklyn Navy Yard", location_address: "141 Flushing Avenue, Brooklyn, New York", city: "New York")


john_wick.movie_scenes << marcus_home_scene
john_wick.movie_scenes << red_circle_club_scene
john_wick.movie_scenes << church_scene
john_wick.movie_scenes << johns_house_scene
john_wick.movie_scenes << final_scene

marcus_house.movie_scenes << marcus_home_scene
red_circle_club.movie_scenes << red_circle_club_scene
church_location.movie_scenes << church_scene
johns_house_location.movie_scenes << johns_house_scene
final_scene_location.movie_scenes << final_scene

#movie
ghostbusters = Movie.create(title: "Ghostbusters", city: "New York")

#movie_scenes
hq_scene = MovieScene.create(scene_description: "Headquarters" )
restaurant_scene = MovieScene.create(scene_description: "Restaurant where Louis tries to escape a ravening hellbound")
spook_central_scene =  MovieScene.create(scene_description: "First Client")


#locations
hq_location = Location.create(location_title: "Hook & Ladder Co", location_address: "8-14 North Moore Street, New York, NY", city: "New York")

restaurant_location = Location.create(location_title: "Tavern on the Green", location_address: "Central Park at West 67th Street, New York, NY", city: "New York")

spook_central = Location.create(location_title: "Spook Central", location_address: "55 Central Park West, New York, NY", city: "New York")


ghostbusters.movie_scenes << hq_scene
ghostbusters.movie_scenes << restaurant_scene
ghostbusters.movie_scenes << spook_central_scene

hq_location.movie_scenes << hq_scene
restaurant_location.movie_scenes << restaurant_scene
spook_central.movie_scenes << spook_central_scene

#movie
when_harry_met_sally = Movie.create(title: "When Harry Met Sally", city: "New York")

#movie_scenes
batting_cage_scene = MovieScene.create(scene_description: "Batting cage scene with Harry and Jess")
deli_scene = MovieScene.create(scene_description: "Harry and Sally discuss faking it")

#locations
batting_cage_location = Location.create( location_title: "Coney Island", location_address: "Coney Island, Brooklyn, New York", city: "New York")

deli_location = Location.create( location_title: "Katz’s Delicatessen", location_address: "205 East Houston Street, New York, NY",city: "New York")


when_harry_met_sally.movie_scenes << batting_cage_scene
when_harry_met_sally.movie_scenes << deli_scene

batting_cage_location.movie_scenes << batting_cage_scene
deli_location.movie_scenes << deli_scene


#movie
men_in_black = Movie.create(title: "Men in Black", city: "New York")

#movie_scenes
hq_men_in_black = MovieScene.create(scene_description: "Headquarters")
alien_landing = MovieScene.create(scene_description: "Alien Landing")
restaurant_good_kitchen = MovieScene.create(scene_description: "Restaurant with the neon sign, in Russian, that translates as 'Good Kitchen'")

#locations
hq_men_in_black_location = Location.create(location_title: "Brooklyn Battery-Tunnel Ventilation Shaft", location_address:"Battery Park, New York NY",city: "New York")

alien_landing_location= Location.create(location_title: "Flushing Meadows Park", location_address: "Flushing Meadows Park, Queens, New York",city: "New York")

restaurant_good_kitchen_location = Location.create(location_title: "R&L Restaurant", location_address:"69 Gansevoort St, New York, NY", city: "New York")

men_in_black.movie_scenes << hq_men_in_black
men_in_black.movie_scenes << alien_landing
men_in_black.movie_scenes << restaurant_good_kitchen

hq_men_in_black_location.movie_scenes << hq_men_in_black
alien_landing_location.movie_scenes << alien_landing
restaurant_good_kitchen_location.movie_scenes << restaurant_good_kitchen


#movie

roman_holiday = Movie.create(title: "Roman Holiday", city: "Rome")

#movie_scenes
on_the_scooter = MovieScene.create(scene_description: "Bradley and the princess on the scooter")

photograph_scene = MovieScene.create(scene_description: "Mr. Bradley ask Irving the Photoreporter to photograph the Princess at a cafe")

driving_off_scene = MovieScene.create(scene_description: "Princess Ann drives off with the scooter")

#locations
scooter_location = Location.create(location_title: "street", location_address: "Via del Teatro di Marcello, Rome", city: "Rome")

photograph_location = Location.create(location_title: "Cafe Rocca", location_address: "Via della Rotonda 25, Pantheon, Rome", city: "Rome")

driving_off_location = Location.create(location_title: "Piazza Venezia", location_address: "Piazza Venezia, Rome", city: "Rome")

roman_holiday.movie_scenes << on_the_scooter
roman_holiday.movie_scenes << photograph_scene
roman_holiday.movie_scenes << driving_off_scene

scooter_location.movie_scenes << on_the_scooter
photograph_location.movie_scenes << photograph_scene
driving_off_location.movie_scenes << driving_off_scene


#movie

talented_mr_ripley = Movie.create(title: "The Talented Mr. Ripley", city: "Rome")
meeting_scene = MovieScene.create(scene_description: "Freddie and Ripley meet in Rome")

piazza_navona = Location.create(location_title: "Piazza Navona", location_address: "Rome, Italy", city: "Rome")

hotel_scene = MovieScene.create(scene_description: "Ripleys hotel in Rome")

grand_hotel = Location.create(location_title: "Le Grand Hotel", location_address: "Rome, Italy", city: "Rome")

ripley_club_scene = MovieScene.create(scene_description: "Ripley goes to a jazz club")

ripley_jazz_club = Location.create(location_title: "Nightclub Vesuvio", location_address: "Rome, Italy", city: "Rome")

talented_mr_ripley.movie_scenes << meeting_scene
talented_mr_ripley.movie_scenes << hotel_scene
talented_mr_ripley.movie_scenes << ripley_club_scene
piazza_navona.movie_scenes << meeting_scene
grand_hotel.movie_scenes << hotel_scene
ripley_jazz_club.movie_scenes << ripley_club_scene

#movie

lizzie_mcguire = Movie.create(title: "The Lizzie McGuire Movie", city: "Rome")

fountain_scene = MovieScene.create(scene_description: "Lizzie is approached by Italian pop star Paolo, who mistakes her for his singer partner, Isabella")
 
trevi_fountain = Location.create(location_title: "Trevi Fountain", location_address: "Rome, Italy", city: "Rome")

garden_scene = MovieScene.create(scene_description: "Lizzie and Paolo rehearse for their performance and have a magical evening running through the Tivoli Gardens")

tivoli_gardens = Location.create(location_title: "The Tivoli Gardens", location_address: "Rome, Italy", city: "Rome")


concert_scene = MovieScene.create(scene_description: "Lizzie McGuire makes her musical debut and exposes Paolo as a fraud, destroying his career in the iconic climax of the movie")

colosseum = Location.create(location_title: "The Colosseum", location_address: "Rome, Italy", city: "Rome")

lizzie_mcguire.movie_scenes << fountain_scene
lizzie_mcguire.movie_scenes << garden_scene
lizzie_mcguire.movie_scenes << concert_scene
trevi_fountain.movie_scenes << fountain_scene
tivoli_gardens.movie_scenes << garden_scene
colosseum.movie_scenes << concert_scene


#movie

time_travelers_wife = Movie.create(title: "The Time Traveler’s Wife", city: "Chicago")
meadowlark_scene = MovieScene.create(scene_description: "Claire’s childhood home, where at six years old she first meets Henry after he travels back in time and appears in the meadow")

meadowlark_house = Location.create(location_title: "Meadowlark House", location_address: "Chicago, Illinois", city: "Chicago")

library_scene = MovieScene.create(scene_description: "After not seeing him for many years, Claire runs in her long-time friend Henry, but he doesn’t seem to know who she is")
 
newberry_library = Location.create(location_title: "The Newberry Library", location_address: "60 W Walton St, Chicago, Illinois", city: "Chicago")


zoo_scene = MovieScene.create(scene_description: "Henry unexpectedly meets his daughter on a school trip when he travels to the future")

brookfield_zoo = Location.create(location_title: "Brookfield Zoo", location_address: "8400 W 31st St, Chicago, Illinois", city: "Chicago")

time_travelers_wife.movie_scenes << meadowlark_scene
time_travelers_wife.movie_scenes << library_scene
time_travelers_wife.movie_scenes << zoo_scene
meadowlark_house.movie_scenes << meadowlark_scene
newberry_library.movie_scenes << library_scene
brookfield_zoo.movie_scenes << zoo_scene


#movie

devil_wears_prada = Movie.create(title: "The Devil Wears Prada", city: "New York")
bubbys_scene = MovieScene.create(scene_description: "Andy has a night out with her friends at their usual spot, Bubby’s Restaurant")

bubbys_restaurant = Location.create(location_title: "Bubbys Restaurant", location_address: "120 Hudson Street and North Moore Street, New York", city: "New York")

interview_scene = MovieScene.create(scene_description: "Andy has a job interview at Runway Magazine, a magazine devoted to fashion")

runway_magazine = Location.create(location_title: "Runway Magazine HQ", location_address: "1221 6th Avenue and West 49th Street, New York", city: "New York")

townhouse_scene = MovieScene.create(scene_description: "Andy goes to Miranda’s home to drop off The Book")

mirandas_home = Location.create(location_title: "Miranda’s Townhouse", location_address: "129 East 73rd Street and Lexington Avenue, New York", city: "New York")

devil_wears_prada.movie_scenes << bubbys_scene
devil_wears_prada.movie_scenes << interview_scene
devil_wears_prada.movie_scenes << townhouse_scene
bubbys_restaurant.movie_scenes << bubbys_scene
runway_magazine.movie_scenes << interview_scene
mirandas_home.movie_scenes << townhouse_scene 

#movie

la_la_land = Movie.create(title: "La La Land", city: "Los Angeles")
park_scene = MovieScene.create(scene_description: "Mia and Sebastian perform ‘A Lovely Night’ after they reconnect at a Hollywood Hills party")

cathys_corner = Location.create(location_title: "Cathy’s Corner", location_address: "Griffith Park, Los Angeles, California", city: "Los Angeles")

jazz_scene = MovieScene.create(scene_description: "Sebastian introduces Mia to ‘pure jazz’ at a nightclub where he describes his desire to open his own jazz venue one day")

lighthouse_cafe = Location.create(location_title: "The Lighthouse Cafe", location_address: "30 Pier Ave, Hermosa Beach, California", city: "Los Angeles")

sebastian_scene = MovieScene.create(scene_description: "Sebastian plays keyboards for the Messengers, a pop-jazz group. It’s the first big sign that his music career is taking off")

rey_theatre = Location.create(location_title: "El Rey Theatre", location_address: "5515 Wilshire Blvd,Los Angeles, California", city: "Los Angeles")

la_la_land.movie_scenes << park_scene
la_la_land.movie_scenes << jazz_scene
la_la_land.movie_scenes << sebastian_scene
cathys_corner.movie_scenes << park_scene
lighthouse_cafe.movie_scenes << jazz_scene
rey_theatre.movie_scenes << sebastian_scene

#movie

eternal_sunshine = Movie.create(title: "Eternal Sunshine of the Spotless Mind", city: "New York")
montauk_scene = MovieScene.create(scene_description: "Joel decides to skip work, propelled by a powerful urge to take the train to Montauk")

montauk = Location.create(location_title: "Montauk Station", location_address: "Edgemere Rd, Montauk, New York", city: "New York")

barnes_and_noble = MovieScene.create(scene_description: "Joel visits Clementine at the Barnes & Noble she works at, and to his dismay she doesn’t seem to know who he is.")

columbia_university = Location.create(location_title: "Columbia University", location_address: "Broadway & West 115th Street, New York", city: "New York") 

lacuna_inc_scene = MovieScene.create(scene_description: "Joel elects to have Clementine erased from his memory after discovering that’s what she did after they broke up.")

lacuna_inc = Location.create(location_title: "Lacuna, Inc", location_address: "504 Grand Street, New York", city: "New York")

eternal_sunshine.movie_scenes << montauk_scene
eternal_sunshine.movie_scenes << barnes_and_noble
eternal_sunshine.movie_scenes << lacuna_inc_scene
montauk.movie_scenes << montauk_scene
columbia_university.movie_scenes << barnes_and_noble
lacuna_inc.movie_scenes << lacuna_inc_scene 

#movie

big_lebowski = Movie.create(title: "The Big Lebowski", city: "Los Angeles")
bowling_alley =MovieScene.create(scene_description: "The bowling alley where the Dude hangs out with his friends")

hollywood_lanes = Location.create(location_title: "Hollywood Star Lanes", location_address: "5227 Santa Monica Boulevard, Los Angeles, California", city: "Los Angeles") 

artist_loft = MovieScene.create(scene_description: "The loft of avant garde artist Maude Lebowski")

palace_theater = Location.create(location_title: "The Palace Theater", location_address: "630 South Broadway, Los Angeles, California", city: "Los Angeles") 

the_cafe = MovieScene.create(scene_description: "The café where the German nihilists enjoy lingonberry pancakes and pigs in a blanket with a toeless woman")

lebowski_restaurant = Location.create(location_title: "Dinahs Family Restaurant", location_address: "6521 South Sepulveda Boulevard, Culver City, California", city: "Los Angeles")

big_lebowski.movie_scenes << bowling_alley
big_lebowski.movie_scenes << artist_loft
big_lebowski.movie_scenes << the_cafe
hollywood_lanes.movie_scenes << bowling_alley
palace_theater.movie_scenes << artist_loft
lebowski_restaurant.movie_scenes << the_cafe

#movie

nightcrawler = Movie.create(title: "Nightcrawler", city: "Los Angeles")


nightcrawler_mullholland = MovieScene.create(scene_description: "Where Lou alters a crash site to have better framing for his ‘money shot’")

nightcrawler_studio = MovieScene.create(scene_description: "The studio Lou brings footage to in order to get hired as a crime journalist")

nightcrawler_restaurant= MovieScene.create(scene_description: "Lou interviews a young intern to assist him")

mullholland_drive = Location.create(location_title: "Mullholland Drive", location_address: "Mullholland Drive, Hollywood Hills, California", city: "Los Angeles") 

ktla_studio = Location.create(location_title: "KTLA-TV Studios", location_address: "5800 Sunset Blvd., Los Angeles, California", city: "Los Angeles") 

dinahs_restaurant2 = Location.create(location_title: "Dinah’s Family Restaurant", location_address: "6521 South Sepulveda Boulevard, Culver City, California", city: "Los Angeles") 

nightcrawler.movie_scenes << nightcrawler_mullholland
nightcrawler.movie_scenes << nightcrawler_studio
nightcrawler.movie_scenes << nightcrawler_restaurant
mullholland_drive.movie_scenes << nightcrawler_mullholland
ktla_studio.movie_scenes << nightcrawler_studio
dinahs_restaurant2.movie_scenes << nightcrawler_restaurant

#users

franchely = User.create(name: "Franchely")
gia = User.create(name: "Gia")
lundy = User.create(name: "Lundy")
danny = User.create(name: "Danny")

#itinearies

# itinerary_ny = Itinerary.create(itinerary_name: "New York Movie Trip")
# itinerary_chicago = Itinerary.create(itinerary_name: "Chicago Movie Trip")
# itinerary_rome = Itinerary.create(itinerary_name: "Rome Movie Trip")
# itinerary_la = Itinerary.create(itinerary_name: "Los Angeles Movie Trip")

# #itinerary_movie_scenes_ny
# itinerary_ny.itinerary_movie_scenes << MovieScenes.all.select { |movie_scene| movie_scene.locations.city == "New York"



