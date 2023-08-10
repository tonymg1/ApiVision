# user
user = User.create(email: 'user@mail.com')

# movies
movie1 = Movie.create(title: 'Movie 1', plot: 'Plot of Movie 1')
movie2 = Movie.create(title: 'Movie 2', plot: 'Plot of Movie 2')

# seasons
season1 = Season.create(title: 'Season 1', plot: 'Plot of Season 1', number: 1)
season2 = Season.create(title: 'Season 2', plot: 'Plot of Season 2', number: 2)

# episodes
episode1 = Episode.create(episode_number: 1, season: season1)
episode2 = Episode.create(episode_number: 2, season: season1)
episode3 = Episode.create(episode_number: 1, season: season2)
episode4 = Episode.create(episode_number: 2, season: season2)

# purchase options
purchase_option = PurchaseOption.create(purchase_price: 3.99, video_quality: 'HD', purchaseable: movie1)
purchase_option2 = PurchaseOption.create(purchase_price: 2.99, video_quality: 'SD', purchaseable: season1)

# library
Library.create(user: user, purchase_option: purchase_option)


puts "Data loaded succesfully"