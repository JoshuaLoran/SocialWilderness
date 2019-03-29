# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Destination.destroy_all
Review.destroy_all
Trip.destroy_all

User.create(name: "Tom Hanks", age: 65, description: "Great actor", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Tom_Hanks_2014.jpg/220px-Tom_Hanks_2014.jpg", email: "tomhanks@somemail.com", password: "big")
User.create(name: "Leo", age: 45, description: "Another great actor", image_url: "https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY317_CR10,0,214,317_AL_.jpg", email: "leo@somemail.com", password: "leo")
User.create(name: "Dax Shepard", age: 44, description: "Dax Randall Shepard (born January 2, 1975) is an American actor, writer, director and podcast host. He is best known for his work in the feature films Without a Paddle (2004), Zathura: A Space Adventure (2005), Employee of the Month (2006), Idiocracy (2006), Let's Go to Prison (2006), Hit and Run (2012), and CHiPs (2017), the last pair of which he also wrote and directed, the MTV practical joke reality series Punk'd (2003). He portrayed Crosby Braverman in the NBC comedy-drama series Parenthood from 2010 to 2015.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Dax_Shepard_Paleyfest_2013.jpg/440px-Dax_Shepard_Paleyfest_2013.jpg", email: "daxshepard@somemail.com", password: "dax")
User.create(name: "Kristan Bell", age: 38, description: "Kristen Anne Bell (born July 18, 1980)[1] is an American actress. She began her acting career by starring in stage productions while attending the Tisch School of the Arts in New York. In 2001, she made her Broadway debut as Becky Thatcher in The Adventures of Tom Sawyer and starred in the Broadway revival of The Crucible the following year. In 2004, she appeared in the film Spartan and won praise for her performance in Gracie's Choice.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Kristen_Bell_Frozen_premiere_2013_%28cropped%29.jpg/440px-Kristen_Bell_Frozen_premiere_2013_%28cropped%29.jpg", email: "kristanbell@somemail.com", password: "kristan")
User.create(name: "Uma Thurman", age: 48, description: "Uma Karuna Thurman (born April 29, 1970)[1] is an American actress and model. She has performed in a variety of films, ranging from romantic comedies and dramas to science fiction and action movies. Following her appearances on the December 1985 and May 1986 covers of British Vogue, Thurman starred in Dangerous Liaisons (1988)", image_url: "https://upload.wikimedia.org/wikipedia/commons/8/82/Uma_Thurman_photographed_by_Jiyang_Chen.jpg", email: "uma@somemail.com", password: "uma")
User.create(name: "Sir Michael Caine", age: 86, description: "Sir Michael Caine, CBE (/keɪn/; born Maurice Joseph Micklewhite, 14 March 1933) is an English actor, producer and author. He has appeared in more than 130 films in a career spanning 70 years and is considered a British film icon.[2] Known for his cockney accent, Caine was born in South London, where during his early childhood, he and his parents lived in a rented flat on Urlwin Street,", image_url: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Sir_Michael_Caine%2C_28th_EFA_Awards_2015%2C_Berlin_%28cropped%29.jpg", email: "michaelcain@somemail.com", password: "mic")
User.create(name: "Hugh Jackman", age: 50, description: "Hugh Michael Jackman (born 12 October 1968)[1] is an Australian actor, singer, and producer. Jackman has won international recognition for his roles in a variety of film genres. He is known for his long-running role as Wolverine in the X-Men film series which he holds the Guinness World Record of longest career as a live-action Marvel superhero.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/World_Premiere_Logan_Berlinale_2017.jpg/440px-World_Premiere_Logan_Berlinale_2017.jpg", email: "hughjackman@somemail.com", password: "wolf")
User.create(name: "Nina Simone", age: 70, description: "Eunice Kathleen Waymon (February 21, 1933 – April 21, 2003), known professionally as Nina Simone (/ˈniːnə sɪˈmoʊn/), was an American singer, songwriter, musician, arranger, and civil rights activist. Her music spanned a broad range of musical styles including classical, jazz, blues, folk, R&B, gospel, and pop.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Nina_Simone_1965.jpg/440px-Nina_Simone_1965.jpg", email: "ninasimone@somemail.com", password: "nina")


Destination.create(name: "Grand Canyon Park", location_url: "https://www.visitarizona.com/cities/northern/grand-canyon-village", booking_url: "https://www.wildwestrvresort.com/", description: "Unique combinations of geologic color and erosional forms decorate a canyon that is 277 river miles (446km) long, up to 18 miles (29km) wide, and a mile (1.6km) deep. Grand Canyon overwhelms our senses through its immense size. South Rim is open all year.  North Rim is closed for the winter.")
Destination.create(name: "Red Rocks", location_url: "https://www.redrocksonline.com/", booking_url: "https://www.redrocksonline.com/plan-your-visit/accommodations", description: "Red Rocks is a geologically formed, open-air amphitheater that is not duplicated anywhere in the world. With Mother Nature as the architect, the design of the Amphitheatre consists of two, three hundred-foot monoliths (Ship Rock and Creation Rock) that provide acoustic perfection for any performance.")
Destination.create(name: "Mount Rainier", location_url: "https://www.nps.gov/mora/index.htm", booking_url: "https://www.nps.gov/mora/planyourvisit/permitsandreservations.htm", description: "Ascending to 14,410 feet above sea level, Mount Rainier stands as an icon in the Washington landscape. An active volcano, Mount Rainier is the most glaciated peak in the contiguous U.S.A., spawning five major rivers. Subalpine wildflower meadows ring the icy volcano while ancient forest cloaks Mount Rainier’s lower slopes. Wildlife abounds in the park’s ecosystems. A lifetime of discovery awaits.")
Destination.create(name: "Appalachian Trial", location_url: "http://www.appalachiantrail.org/", booking_url: "http://www.appalachiantrail.org/home/explore-the-trail/trail-updates", description: "The Appalachian National Scenic Trail, generally known as the Appalachian Trail or simply the A.T., is a marked hiking trail in the Eastern United States extending between Springer Mountain in Georgia and Mount Katahdin in Maine.[1] The trail is about 2,200 miles (3,500 km) long, though the exact length changes over time as parts are modified or rerouted.[a] The Appalachian Trail Conservancy describes the Appalachian Trail as the longest hiking-only trail in the world.[2][3] More than 2 million people are said to take a hike on part of the trail at least once each year.")



Review.create(title: "Cool Concert", content: "I went on this really awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 1, rating: 4)
Review.create(title: "Cooler Concert", content: "I went on this really REALLY awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 1, rating: 3)
Review.create(title: "Best Concert", content: "I went on this really awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 2, rating: 5)
Review.create(title: "Better Concert", content: "I went on this really REALLY awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 2, rating: 1)
Review.create(title: "Hike 1", content: "For President Trump, it may have been the best day of his tenure so far.", destination_id: 2, user_id: 1, rating: 4)
Review.create(title: "Hike 2", content: "The darkest, most ominous cloud hanging over his presidency was all but lifted on Sunday with the release of the special counsel’s conclusions.", destination_id: 2, user_id: 1, rating: 4)

Trip.create(title: "Wanna hike there again", user_id: 1, destination_id: 1)
Trip.create(title: "Hikey hike", user_id: 1, destination_id: 2)
Trip.create(title: "Wanna hike?", user_id: 2, destination_id: 1)
Trip.create(title: "Hikeee", user_id: 2, destination_id: 2)
Trip.create(title: "Wanna hike there again", user_id: 3, destination_id: 3)
Trip.create(title: "Hikey hike", user_id: 3, destination_id: 4)
Trip.create(title: "Wanna hike?", user_id: 4, destination_id: 1)
Trip.create(title: "Hikeee", user_id: 4, destination_id: 2)
Trip.create(title: "Wanna hike there again", user_id: 5, destination_id: 3)
Trip.create(title: "Hikey hike", user_id: 5, destination_id: 1)
Trip.create(title: "Wanna hike?", user_id: 6, destination_id: 2)
Trip.create(title: "Hikeee", user_id: 6, destination_id: 4)
Trip.create(title: "Wanna hike?", user_id: 7, destination_id: 2)
Trip.create(title: "Hikeee", user_id: 7, destination_id: 4)
Trip.create(title: "Wanna hike?", user_id: 8, destination_id: 2)
Trip.create(title: "Hikeee", user_id: 8, destination_id: 4)
