require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Rental.destroy_all
Game.destroy_all
User.destroy_all

claudiu = User.create!(email: "claudiu@claudiu.com", password: "claudiu123", location: "Berlin", username: "claudiu")
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
barney = User.create(email: "barney@barney.com", password: "barney123", location: "Berlin", username: "barney")
jal = User.create(email: "jal@jal.com", password: "jal123", location: "Berlin", username: "jal")
julian = User.create(email: "julian@julian.com", password: "julian123", location: "Berlin", username: "julian")

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
game_1 = Game.new(name: "Pandemic", description: "In Pandemic, several virulent diseases have broken out simultaneously all over the world! The players are disease-fighting specialists whose mission is to treat disease hotspots while researching cures for each of four plagues before they get out of hand.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_1.save!

image_2 = URI.open('https://cdn.shopify.com/s/files/1/0513/4077/1515/products/viticulture-essential-edition-board-game.jpg')
game_2 = Game.new(name: "Viticulture: Essential Edition", description: "Viticulture is a worker-placement game set in the foothills of Tuscany. The Essential Edition includes the second edition of Viticulture along with several elements from the original Tuscany expansion pack, hand-picked by famed designer Uwe Rosenberg.", category: "Learning", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_2.photo.attach(io: game_2, filename: 'nes.png', content_type: 'image/png')
game_2.save

image_3 = URI.open('https://d2k4q26owzy373.cloudfront.net/700x700/games/uploaded/1559254183527-61HYBjXXnEL.jpg')
Game.new(name: "Ticket To Ride", description: "Ticket to Ride is a cross-country train adventure game. Players collect train cards that enable them to claim railway routes connecting cities throughout North America.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_3.photo.attach(io: game_3, filename: 'nes.png', content_type: 'image/png')
game_3.save

image_4 = URI.open('https://d2k4q26owzy373.cloudfront.net/700x700/games/uploaded/1559258092947-61SvciVJLlL.jpg')
Game.new(name: "Dixit", description: "Dixit is a lovingly illustrated game of creative guesswork, where your imagination unlocks the tale!", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_4.photo.attach(io: game_4, filename: 'nes.png', content_type: 'image/png')
game_4.save

image_4 = URI.open('https://cdn11.bigcommerce.com/s-ua4dd/images/stencil/1280x1280/products/45536/99617/bezsub2__84366.1615254860.jpg')
Game.new(name: "Suburbia", description: "Plan, build, and develop a small town into a major metropolis.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_5.photo.attach(io: game_5, filename: 'nes.png', content_type: 'image/png')
game_5.save
# Game.create(name: "Viticulture: Essential Edition", description: "Viticulture is a worker-placement game set in the foothills of Tuscany. The Essential Edition includes the second edition of Viticulture along with several elements from the original Tuscany expansion pack, hand-picked by famed designer Uwe Rosenberg.", category: "Learning", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Ticket To Ride", description: "Ticket to Ride is a cross-country train adventure game. Players collect train cards that enable them to claim railway routes connecting cities throughout North America.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Dixit", description: "Dixit is a lovingly illustrated game of creative guesswork, where your imagination unlocks the tale!", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Suburbia", description: "Plan, build, and develop a small town into a major metropolis.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Photosynthesis", description: "Photosynthesis", category: "Strategy", min_players: 2, max_players: 6, price: 2, rented: false, user: claudiu)
# Game.create(name: "T.I.M.E. Stories", description: "You and your team will travel back (or forward) in time to prevent some cataclysmic event. But don't waste a moment...every second counts!", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Magic Maze", description: "Recently stripped of your possessions, your group of down-on-their-luck adventurers has nary a copper piece between you. Your only option if you're to resume your dungeon-delving activities is to sack the local mall of valuables and supplies.", category: "Learning", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Mice and Mystics", description: "In Mice and Mystics players take on the roles of those still loyal to the king - but to escape the clutches of Vanestra, they have been turned into mice!", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create!(name: "The Quest for El Dorado", description: "A deck-building game of perilous paths and rewarding riches. Will you dare to search for the golden city?", category: "Strategy", min_players: 2, max_players: 6, price: 2, rented: false, user: claudiu)
# Game.create(name: "Architects of the West Kingdom", description: " As royal architects, players compete to impress their King and maintain their noble status by constructing various landmarks throughout his newly appointed domain. Players will need to collect raw materials, hire apprentices and keep a watchful eye on their workforce", category: "Strategy", user: claudiu, min_players: 1, max_players: 5, price: 2, rented: false)
# Game.create(name: "Kanban: Driver’s Edition", description: "You work in a factory focused on lean production. You must impress Sandra, the factory manager, who will review your performance and keep the factory ticking like a clock.", category: "Learning", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
# Game.create(name: "Inis", description: "In Inis, you play the role of a Celtic chieftain who has just arrived in a new land. You must construct sanctuaries for spiritual enlightenment, erect citadels to protect peaceful clans, and indulge your wanderlust by exploring the surrounding territories", category: "Strategy", user: claudiu, min_players: 2, max_players: 4, price: 2, rented: false)
# Game.create(name: "Takenoko", description: "players will cultivate the land plots, irrigate them and grow one of the three species of bamboo (Green, Yellow and Pink) with the help of the Imperial gardener", category: "Strategy", user: claudiu, min_players: 2, max_players: 4, price: 2, rented: false)
# Game.create(name: "Pax Pamir", description: "In Pax Pamir, players take the role of Afghan political factions in the early nineteenth century. For generations the Durrani Empire held the region together. Now, their authority has collapsed. Rivals both old and new have emerged from the shadows. It’s up to the players to see if a fledgling Afghan state might come into being.", category: "Strategy", user: claudiu, min_players: 1, max_players: 5, price: 2, rented: false)
# Game.create(name: "Yokohama", description: "In YOKOHAMA, each player is a merchant in the Meiji period, trying to gain fame from a successful business, and to do so they need to build a store, broaden their sales channels, learn a variety of techniques, and (of course) respond to trade orders from abroad", category: "Strategy", min_players: 2, max_players: 4, price: 2, rented: false, user: claudiu)
# Game.create(name: "Specter Ops", description: "An agent of A.R.K. has infiltrated a top secret Raxxon facility and must complete 3 mission objectives before attempting to escape! Not uneasy task with genetically modified Raxxon Hunters on a mission to seek out and destroy the agent. Which side will you choose", category: "Strategy", user: claudiu, min_players: 2, max_players: 5, price: 2, rented: false)
# Game.create(name: "Santa Maria", description: "Santa Maria is a streamlined, medium complexity euro-game in which each player establish and develop a colony. The game features elements of dice drafting and strategic engine building. The game is low on luck, has no direct destructive player conflict, and all components are language independent", category: "Learning", user: claudiu, min_players: 1, max_players: 4, price: 2, rented: false)
# Game.create(name: "The Lord of the Rings: Journeys in Middle-earth", description: "IForm your Fellowship and set out on your own adventures in The Lord of the Rings: Journeys in Middle-earth, a fully-cooperative, app-supported board game set in J.R.R. Tolkien’s iconic land of Middle-earth", category: "Strategy", user: claudiu, min_players: 1, max_players: 5, price: 2, rented: false)
