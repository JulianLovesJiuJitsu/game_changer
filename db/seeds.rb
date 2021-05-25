# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Game.destroy_all
User.destroy_all

User.create(email: "claudiu@claudiu.com", password: "password", location: "Berlin", username: "claudiu")
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.create!(min_players: 3, max_players: 6, price: 10, rented: false, name: "7 Wonders Duel", description: "7 Wonders Duel is a fast-paced, two-player edition of Antoine Bauza's award-winning civilization-building game.", category: "Strategy", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Pandemic", description: "In Pandemic, several virulent diseases have broken out simultaneously all over the world! The players are disease-fighting specialists whose mission is to treat disease hotspots while researching cures for each of four plagues before they get out of hand.", category: "Strategy", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Viticulture: Essential Edition", description: "Viticulture is a worker-placement game set in the foothills of Tuscany. The Essential Edition includes the second edition of Viticulture along with several elements from the original Tuscany expansion pack, hand-picked by famed designer Uwe Rosenberg.", category: "Learning", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Ticket To Ride", description: "Ticket to Ride is a cross-country train adventure game. Players collect train cards that enable them to claim railway routes connecting cities throughout North America.", category: "Strategy", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Dixit", description: "Dixit is a lovingly illustrated game of creative guesswork, where your imagination unlocks the tale!", category: "Strategy", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Suburbia", description: "Plan, build, and develop a small town into a major metropolis.", category: "Strategy", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Photosynthesis", description: "Photosynthesis", category: "Strategy")
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "T.I.M.E. Stories", description: "You and your team will travel back (or forward) in time to prevent some cataclysmic event. But don't waste a moment...every second counts!", category: "Strategy", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Magic Maze", description: "Recently stripped of your possessions, your group of down-on-their-luck adventurers has nary a copper piece between you. Your only option if you're to resume your dungeon-delving activities is to sack the local mall of valuables and supplies.", category: "Learning", user_id: 1)
Game.create(min_players: 3, max_players: 6, price: 10, rented: false, name: "Mice and Mystics", description: "In Mice and Mystics players take on the roles of those still loyal to the king - but to escape the clutches of Vanestra, they have been turned into mice!", category: "Strategy", user_id: 1)
