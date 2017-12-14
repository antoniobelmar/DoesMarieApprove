ActiveRecord::Base.connection.tables.each do |table|
    if table != 'schema_migrations'
        ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table} CASCADE;")
        ActiveRecord::Base.connection.reset_pk_sequence! table
    end
end


user = User.create(name: 'Antonio', email: 'antonio123@antonio123.com', password: '123456', password_confirmation: '123456')
user.restaurants.create(name:'Antonios',description:'sells soups',image:'https://media-cdn.tripadvisor.com/media/photo-s/0a/7b/7b/c6/restaurant-view.jpg',location:'London')
user.restaurants.create(name:'Allans',description:'sells steaks',image:'https://www.tivolihotel.com/uploads/tx_templavoila/720x469-Tivoli-Hotel-restaurant-tivoli-brasserie-breakfast-5.jpg',location:'London')
user.restaurants.create(name:'Marie',description:'does bottomless brunches',image:'https://www.greenbank-hotel.co.uk/wp-content/uploads/2016/12/waters-edge-restaurant-falmouth-restaurants-greenbank-hotel-cornwall-cosy-booths.jpg',location:'London')
user.restaurants.create(name:'Dania',description:'specializes in chicken rice',image:'https://media-cdn.tripadvisor.com/media/photo-o/06/45/0e/fe/fino-cocktail-bar-restaurant.jpg',location:'London')

user2 = User.create(name: 'Allan', email: 'alkla@antonio123.com', password: '123456', password_confirmation: '123456')
# review = user2.reviews.new(rating: 1, comment: 'greatest food alive')
restaurant = Restaurant.find_by(id: 1)
restaurant.reviews << user2.reviews.new(rating: 1, comment: 'greatest food alive')
restaurant.reviews << user2.reviews.new(rating: 10, comment: 'sarcastic comment')
restaurant.reviews << user2.reviews.new(rating: 5, comment: 'indian food bad')
restaurant.save

restaurant = Restaurant.find_by(id: 2)
restaurant.reviews << user.reviews.new(rating: 2, comment: 'i wish they had sandwiches')
restaurant.reviews << user.reviews.new(rating: 0, comment: 'bloody hellycomment')
restaurant.save
