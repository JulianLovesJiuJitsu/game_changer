require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Rental.destroy_all
Game.destroy_all
User.destroy_all

puts 'creating users'
claudiu = User.create!(email: "claudiu@claudiu.com", password: "claudiu123", location: "Berlin", username: "claudiu")
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
barney = User.create(email: "barney@barney.com", password: "barney123", location: "Berlin", username: "barney")
jal = User.create(email: "jal@jal.com", password: "jal123", location: "Berlin", username: "jal")
julian = User.create(email: "julian@julian.com", password: "julian123", location: "Berlin", username: "julian")
puts '4 users created'

puts 'creating seeds for games'
file = URI.open('https://upload.wikimedia.org/wikipedia/en/3/36/Pandemic_game.jpg')
game_1 = Game.new(name: "Pandemic", location: "Berlin", description: "In Pandemic, several virulent diseases have broken out simultaneously all over the world! The players are disease-fighting specialists whose mission is to treat disease hotspots while researching cures for each of four plagues before they get out of hand.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_1.save!

image_2 = URI.open('https://cdn.shopify.com/s/files/1/0513/4077/1515/products/viticulture-essential-edition-board-game.jpg')
game_2 = Game.new(name: "Viticulture: Essential Edition", location: "Berlin", description: "Viticulture is a worker-placement game set in the foothills of Tuscany. The Essential Edition includes the second edition of Viticulture along with several elements from the original Tuscany expansion pack, hand-picked by famed designer Uwe Rosenberg.", category: "Learning", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_2.photo.attach(io: image_2, filename: 'nes.png', content_type: 'image/png')
game_2.save

image_3 = URI.open('https://upload.wikimedia.org/wikipedia/en/9/92/Ticket_to_Ride_Board_Game_Box_EN.jpg')
game_3 = Game.new(name: "Ticket To Ride", description: "Ticket to Ride is a cross-country train adventure game. Players collect train cards that enable them to claim railway routes connecting cities throughout North America.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_3.photo.attach(io: image_3, filename: 'nes.png', content_type: 'image/png')
game_3.save

image_4 = URI.open('https://cf.geekdo-images.com/uSgzS-SClISqDkYRCdUq6g__opengraph_left/img/0rqZE18P3YEExg6_V7GpIjLS7Bk=/fit-in/445x445/filters:strip_icc()/pic3483909.jpg')
game_4 = Game.new(name: "Dixit", location: "Berlin", description: "Dixit is a lovingly illustrated game of creative guesswork, where your imagination unlocks the tale!", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_4.photo.attach(io: image_4, filename: 'nes.png', content_type: 'image/png')
game_4.save

image_5 = URI.open('https://cf.geekdo-images.com/1YcHesB7LRvCF8i9vgH7qw__opengraph_left/img/YnkZfTIasR-pwXIn4Sbsjzm0kzE=/fit-in/445x445/filters:strip_icc()/pic6009608.png')
game_5 = Game.new(name: "Suburbia", location: "Berlin", description: "Plan, build, and develop a small town into a major metropolis.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_5.photo.attach(io: image_5, filename: 'nes.png', content_type: 'image/png')
game_5.save

image_6 = URI.open('https://www.cnet.com/a/img/sxJdNIvdgNkWJiZZOpWVamqLCOo=/980x0/2016/09/08/171d3052-c854-43e0-a408-c85aec34261a/quarantine.jpg')
game_6 = Game.new(name: "Quarantine", location: "Berlin", description: "Compete to run a first-rate hospital amid an influx of 'highly contagious patients,'' like the guy on the box with the greenish sick face.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_6.photo.attach(io: image_6, filename: 'nes.png', content_type: 'image/png')
game_6.save

image_7 = URI.open('https://www.cnet.com/a/img/IF8Ve2H7Q4P2ysBGEgDTa-1PdiU=/980x0/2016/09/09/4d1211d3-0d3d-4f34-a028-14ddff4fdb33/gettyimages-51404671.jpg')
game_7 = Game.new(name: "Trump the Game", location: "Berlin", description: "Live the riches-to-riches story of the presidential candidate as you 'do whatever it takes to turn $500 million into billions.'' The 2004 version of the game (pictured, and featuring the 'You're fired' catchphrase) can be had on eBay for about $20 and up. ", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_7.photo.attach(io: image_7, filename: 'nes.png', content_type: 'image/png')
game_7.save

image_8 = URI.open('https://www.cnet.com/a/img/N_6v5bCimnQH01BLkRRTfAq2XHQ=/980x0/2016/09/08/c08215e6-0f09-4543-886c-c81eeec34914/yorkieopoly.jpg')
game_8 = Game.new(name: "Yorkieopoly", location: "Berlin", description: "Fleas and incontinence are two of the issues you'll contend with as you compete for the big bones. If Yorkies aren't your thing, Late for the Sky markets several other dog- and animal-themed games.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_8.photo.attach(io: image_8, filename: 'nes.png', content_type: 'image/png')
game_8.save

image_9 = URI.open('https://www.cnet.com/a/img/kpOGFnayCDFCuoRMrndoESH-j5Q=/980x0/2016/09/08/e5cac8ff-e739-46f8-b410-3924b1983a50/speak-out.jpg')
game_9 = Game.new(name: "Speak out", location: "Berlin", description: "This game comes complete with 200 double-sided, read-aloud cards and five mouthpieces that are supposed to render the real-aloud cards unintelligible. So, yup, you can sound drunk even when you're not drunk", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_9.photo.attach(io: image_9, filename: 'nes.png', content_type: 'image/png')
game_9.save


image_10 = URI.open('https://www.cnet.com/a/img/KptxapvCFkhDC4I_0nb8ZefthCA=/980x0/2016/09/08/301f256a-c37d-4d91-941f-6cdf17ea81ee/gettyimages-460668676.jpg')
game_10 = Game.new(name: "Lawsuit", location: "Berlin", description: "Hey, kids, let's take the bar and file court documents!", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_10.photo.attach(io: image_10, filename: 'nes.png', content_type: 'image/png')
game_10.save

image_11 = URI.open('https://www.cnet.com/a/img/KGYIrw5e87NgRa1Ghc2F-K-jaVw=/980x0/2016/09/08/8c62c32d-8f97-48d0-911e-8140c57eb844/gettyimages-112198895.jpg')
game_11 = Game.new(name: "Toy Story Operation", location: "Berlin", description: "Tired of committing malpractice on a stranger? Then wield your equipment on the beloved character Buzz Lightyear. No pressure.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_11.photo.attach(io: image_11, filename: 'nes.png', content_type: 'image/png')
game_11.save

image_12 = URI.open('https://www.cnet.com/a/img/BaR-_l5j7CdCEBwFsDEtIXY_4tg=/980x0/2016/09/08/d842a757-7a9b-4ea4-a641-dbef28917e52/foreclosed.jpg')
game_12 = Game.new(name: "Foreclosed", location: "Berlin", description: "What could be more fun than reliving the nation's housing crash? Getting to relive it as a creditor, apparently.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_12.photo.attach(io: image_12, filename: 'nes.png', content_type: 'image/png')
game_12.save

image_13 = URI.open('https://comedy-intl.mtvnimages.com/uri/mgid:file:http:shared:uk.cc.prod-sites.vimn.com/sites/default/files/styles/image-w-760-scale/public/cc_uk/galleries/large/2016/09/19/poison_ivy.jpg?itok=Cd_tyoBa&quality=.7')
game_13 = Game.new(name: "Poison Ivy", location: "Berlin", description: "This game teaches children that if touching something poisonous leads to you lose several fingers, by Jove, you should keep doing it.The object of the game is to pick as many green leaves from the 'Ivy Patch' as possible without picking up poison ivy. Every time you pick a poison one you have to bandage up a finger, so it's not long before you have bloody stumps instead of hands.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_13.photo.attach(io: image_13, filename: 'nes.png', content_type: 'image/png')
game_13.save

image_14 = URI.open('https://comedy-intl.mtvnimages.com/uri/mgid:file:http:shared:uk.cc.prod-sites.vimn.com/sites/default/files/styles/image-w-760-scale/public/cc_uk/galleries/large/2016/09/19/capital_punishment.jpg?itok=v8vPEMr1&quality=.7')
game_14 = Game.new(name: "Capital Punishment", location: "Berlin", description: "Capital Punishment was created to make a point about justice and crime. One player wins by moving all of their 'criminals' to either Life Imprisonment, Death Row or the Electric Chair. We can hear the sound of children's laughter already.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_14.photo.attach(io: image_14, filename: 'nes.png', content_type: 'image/png')
game_14.save

image_15 = URI.open('https://comedy-intl.mtvnimages.com/uri/mgid:file:http:shared:uk.cc.prod-sites.vimn.com/sites/default/files/styles/image-w-760-scale/public/cc_uk/galleries/large/2016/09/19/bed_bugs.jpg?itok=Yp3MoHyn&quality=.7')
game_15 = Game.new(name: "Bed Bugs", location: "Berlin", description: "Have you ever been bitten by a bed bug? It really isn't nice. They're larger-than-expected (Google at your own risk), flat insects that can smell when you're asleep - at which time they go for a little jaunt around your body, biting as they go along.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_15.photo.attach(io: image_15, filename: 'nes.png', content_type: 'image/png')
game_15.save

image_16 = URI.open('https://comedy-intl.mtvnimages.com/uri/mgid:file:http:shared:uk.cc.prod-sites.vimn.com/sites/default/files/styles/image-w-760-scale/public/cc_uk/galleries/large/2016/09/19/bed_bugs.jpg?itok=Yp3MoHyn&quality=.7')
game_16 = Game.new(name: "Bed Bugs", location: "Berlin", description: "Have you ever been bitten by a bed bug? It really isn't nice. They're larger-than-expected (Google at your own risk), flat insects that can smell when you're asleep - at which time they go for a little jaunt around your body, biting as they go along.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_16.photo.attach(io: image_16, filename: 'nes.png', content_type: 'image/png')
game_16.save

image_17 = URI.open('https://www.cnet.com/a/img/KGYIrw5e87NgRa1Ghc2F-K-jaVw=/980x0/2016/09/08/8c62c32d-8f97-48d0-911e-8140c57eb844/gettyimages-112198895.jpg')
game_17 = Game.new(name: "Toy Story Operation", location: "Berlin", description: "Tired of committing malpractice on a stranger? Then wield your equipment on the beloved character Buzz Lightyear. No pressure.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_17.photo.attach(io: image_17, filename: 'nes.png', content_type: 'image/png')
game_17.save

image_18 = URI.open('https://comedy-intl.mtvnimages.com/uri/mgid:file:http:shared:uk.cc.prod-sites.vimn.com/sites/default/files/styles/image-w-760-scale/public/cc_uk/galleries/large/2016/09/19/mr_pop.jpg?itok=xX8Cnz90&quality=.7')
game_18 = Game.new(name: "Mr. Pop", location: "Berlin", description: "In the cheerily-named Mr. Pop!, the objective is to stop a man's face jumping up at you and subsequently collapsing in on itself.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_18.photo.attach(io: image_18, filename: 'nes.png', content_type: 'image/png')
game_18.save

image_19 = URI.open('https://comedy-intl.mtvnimages.com/uri/mgid:file:http:shared:uk.cc.prod-sites.vimn.com/sites/default/files/styles/image-w-760-scale/public/cc_uk/galleries/large/2016/09/19/steam.jpg?itok=LT_gBm7s&quality=.7')
game_19 = Game.new(name: "Die grosse Walze", location: "Berlin", description: "Die Grosse Walze is the name of the steam roller you can see on the game's box, and the objective of the game is to mow down as many innocent humans as possible using it. Is the steam roller's face one of calm? An acceptance of death, while taking as many other lives as possible with it? The game was published in 1929, which we hear wasn't a very optimistic year.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_19.photo.attach(io: image_19, filename: 'nes.png', content_type: 'image/png')
game_19.save

image_20 = URI.open('https://earthlymission.com/wp-content/uploads/2015/05/weird-board-games-from-the-past-1.jpg')
game_20 = Game.new(name: "Lie Cheat Steal", location: "Berlin", description: "Lie Cheat and steal your way through this game! Fun and educational for the whole family", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_20.photo.attach(io: image_20, filename: 'nes.png', content_type: 'image/png')
game_20.save

image_21 = URI.open('https://cdn.vox-cdn.com/thumbor/0brw7PQMD1PInU2ouOdIKHGg84Q=/0x0:3000x2000/1320x0/filters:focal(0x0:3000x2000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429072/chall_210405_ecl1083_0026.jpg')
game_21 = Game.new(name: "7 Wonders", location: "Berlin", description: "7 Wonders is a card game based around the seven wonders of the ancient world, each with different strengths. Those strengths take on the form of buffs or new mechanics that change how you play the game. One might give you more power to combat, while another allows you to grab cards from a discard pile. The game progresses in three thematic rounds called ages, moving from basic woodworking and trading, up through the advent of sawmills and markets, and ending with the rise of worker groups and trade guilds. ", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_21.photo.attach(io: image_21, filename: 'nes.png', content_type: 'image/png')
game_21.save

image_22 = URI.open('https://cdn.vox-cdn.com/thumbor/WVL-rZMXQHT20fQSpC8hapQRSFo=/0x0:960x600/1320x0/filters:focal(0x0:960x600):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429355/bloodr5a_Image.jpg')
game_22 = Game.new(name: "Blood Rage", location: "Berlin", description: "Blood Rage is a Viking-themed area control game set during the Norse apocalypse known as Ragnarok. If you’ve played classics like Risk or Axis & Allies then you’re half-way to understanding what makes the game so appealing. It’s fun to move dudes around on a map, and Blood Rage gives you plenty of reasons to do that — and plenty of gorgeous miniatures to move. But, what makes the game so much fun is that you don’t use dice to fight battles. Instead, players depend on card drafting to build up their hands and prepare for war.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_22.photo.attach(io: image_22, filename: 'nes.png', content_type: 'image/png')
game_22.save

image_23 = URI.open('https://cdn.vox-cdn.com/thumbor/ApReQqtYhdrZZ-9ZhZb7lAMDLGk=/0x0:3000x2000/1320x0/filters:focal(0x0:3000x2000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429065/chall_210405_ecl1083_0011.jpg')
game_23 = Game.new(name: "Cash'n'Guns", location: "Berlin", description: "Sometimes the secret to having a great party is having the right kind of party game to bust out at just the right moment. One of the best is Cash’n Guns — basically the tabletop version of Quentin Tarantino’s Reservoir Dogs, just without all the pesky kidnapping and aural mutilation..", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_23.photo.attach(io: image_23, filename: 'nes.png', content_type: 'image/png')
game_23.save

image_24 = URI.open('https://cdn.vox-cdn.com/thumbor/q9cAqUZ8TBLNKUEwqG8d0BYxm7U=/0x0:3000x1994/1320x0/filters:focal(0x0:3000x1994):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429067/chall_210405_ecl1083_0014.jpg')
game_24 = Game.new(name: "Codenames", location: "Berlin", description: "Codenames is a social deduction game that manages to be immensely accessible and provide a brain-teasing challenge. With its high player count and pleasing level of challenge it’s equally at home on family game night, at your local board game meetup, or even over a Zoom hang out.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_24.photo.attach(io: image_24, filename: 'nes.png', content_type: 'image/png')
game_24.save

image_25 = URI.open('https://cdn.vox-cdn.com/thumbor/NPPHQDTlmfxfSZ_BYkov1b8iG30=/0x0:3000x2000/1320x0/filters:focal(0x0:3000x2000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429070/chall_210405_ecl1083_0023.jpg')
game_25 = Game.new(name: "Gloomhaven", location: "Berlin", description: "Good Dungeon Masters (DMs) are hard to find, and that’s part of the reason why Gloomhaven has proven to be so popular with fans of board games. Inside Gloomhaven’s nearly 20-pound box is an elaborate, branching narrative campaign set in a unique fantasy world. But the mechanics are what truly make this game spectacular.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_25.photo.attach(io: image_25, filename: 'nes.png', content_type: 'image/png')
game_25.save

image_26 = URI.open('https://cdn.vox-cdn.com/thumbor/NPPHQDTlmfxfSZ_BYkov1b8iG30=/0x0:3000x2000/1320x0/filters:focal(0x0:3000x2000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429070/chall_210405_ecl1083_0023.jpg')
game_26 = Game.new(name: "Kingdomino", location: "Berlin", description: "Kingdomino is a tile-placement game for two to four players where you build a kingdom out of various terrains. You get points based on how many contiguous tiles of the same terrain you have inside your kingdom. It’s deceptively simple, with only a couple pages of rules and explanation. It doesn’t take long, though, before you’re pouring over every choice, trying to build the perfect kingdom.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_26.photo.attach(io: image_26, filename: 'nes.png', content_type: 'image/png')
game_26.save

image_27 = URI.open('https://cdn.vox-cdn.com/thumbor/UmhZIszkXcyw7-w7Se1MZRcpY7U=/0x0:3000x2000/1320x0/filters:focal(0x0:3000x2000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429060/chall_210405_ecl1083_0003.jpg')
game_27 = Game.new(name: "Klask", location: "Berlin", description: "Klask plays like a mash-up of the classic Canadian folk game Crokinole and air hockey, and thankfully it takes up far less space in your home than either one of those other games. Players sit on either side of a small wooden playing surface raised up about six or eight inches off the table. Below that raised surface they hold onto a magnet that controls a striker on the top of the board. Play starts with the youngest player kicking off, attempting to sink the marble-sized plastic puck into the opposing goal with their striker.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_27.photo.attach(io: image_27, filename: 'nes.png', content_type: 'image/png')
game_27.save

image_28 = URI.open('https://cdn.vox-cdn.com/thumbor/Fq3HqTYRZouDYPiz8CaGxGIBddc=/0x0:3000x2000/1320x0/filters:focal(0x0:3000x2000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429062/chall_210405_ecl1083_0006.jpg')
game_28 = Game.new(name: "Machikoro", location: "Berlin", description: "You start Machi Koro with just two cards on the table — a wheat field (with a number one on it) and a bakery (sporting the numbers two and three). Then you roll a single six-sided die. On a roll of one, two, or three either your wheat field or your bakery turns a small profit, giving you more money to build out your city. Do you spread out across multiple kinds of developments — maybe a few convenience stores (labeled four) or a few cafes (labeled three) — ensuring that you’ll have a steady stream of income no matter what side of the die comes up? Or will you double down on one kind of commercial industry in the hope of a hefty payday later on? It’s a quick, fun race to the finish for two to four players ... and about a million times better than playing Monopoly.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_28.photo.attach(io: image_28, filename: 'nes.png', content_type: 'image/png')
game_28.save

image_29 = URI.open('https://cdn.vox-cdn.com/thumbor/Ws6dtMoSWNKFIgNsD5sVVvfvfpE=/0x0:3000x2017/1320x0/filters:focal(0x0:3000x2017):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22429071/chall_210405_ecl1083_0024.jpg')
game_29 = Game.new(name: "Marvel Champions: The Card Game", location: "Berlin", description: "Marvel Champions: The Card Game allows a team of heroes to work together against a single villain. It’s a “Living Card Game,” which means you won’t be hunting and pecking for the right cards in random booster packs. You always know exactly what you’re going to get when you make a purchase, and subsequent expansions are guaranteed to be compatible with the original base game.", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_29.photo.attach(io: image_29, filename: 'nes.png', content_type: 'image/png')
game_29.save

image_30 = URI.open('https://cdn.vox-cdn.com/thumbor/ln3MEBEAEhJ00uskjLJOa0I8mwo=/0x0:1500x1000/1320x0/filters:focal(0x0:1500x1000):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/4190053/madrid_whitepoint_small.0.jpg')
game_30 = Game.new(name: "Pandemic Legacy", location: "Berlin", description: "Pandemic Legacy includes the basic game, Pandemic, widely regarded as the best gateway into modern board gaming. You can play the vanilla version of the original game as many times as you please, but once you start the Legacy campaign, the world you’re playing with changes forever. Players open government files, recruit new agents and develop old ones, and place stickers on the board. The titular pandemic worsens and mutates over time, and the campaign slowly feels less heroic and more like a struggle for survival. You and your friends will have an experience akin to a summer blockbuster, but broken out across at least a dozen games..", category: "Strategy", user: claudiu, min_players: 2, max_players: 6, price: 2, rented: false)
game_30.photo.attach(io: image_30, filename: 'nes.png', content_type: 'image/png')
game_30.save

puts '30 seeds created'

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
