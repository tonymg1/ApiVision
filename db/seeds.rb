user = User.create(email: 'usuer@mail.com')


movie1 = Movie.create(title: 'Movie 1', plot: 'Plot of Movie 1')
movie2 = Movie.create(title: 'Movie 2', plot: 'Plot of Movie 2')


season1 = Season.create(title: 'Season 1', plot: 'Plot of Season 1', number: 1)
season2 = Season.create(title: 'Season 2', plot: 'Plot of Season 2', number: 2)

episode1 = Episode.create(episode_number: 1, season: season1)
episode2 = Episode.create(episode_number: 2, season: season1)
episode3 = Episode.create(episode_number: 1, season: season2)
episode4 = Episode.create(episode_number: 2, season: season2)


purchase_option = PurchaseOption.create(purchase_price: 2.99, video_quality: 'HD', purchaseable: movie1)
purchase_option2 = PurchaseOption.create(purchase_price: 2.99, video_quality: 'HD', purchaseable: season1)


Library.create(user: user, purchase_option: purchase_option)


