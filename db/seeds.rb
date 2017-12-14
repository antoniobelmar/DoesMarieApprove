# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

p Restaurant.all


# restaurant1 = Restaurant.create(name:'Antonios',description:'sells soups',image:'http://google.com',location:'London')
# restaurant1.reviews.create(comment:'Always a good soup',rating: 4)
#
#
# restaurant2 = Restaurant.create(name:'Allans',description:'sells steaks',image:'http://google.com',location:'London')
# restaurant2.reviews.create(comment:'All right steak',rating: 2)
#
# restaurant3 = Restaurant.create(name:'Marie',description:'does bottomless brunches',image:'http://google.com',location:'London')
# restaurant3.reviews.create(comment:'Getting drunk with brunch',rating: 5)
#
#
# restaurant4 = Restaurant.create(name:'Dania',description:'specializes in chicken rice',image:'http://google.com',location:'London')
# restaurant4.reviews.create(comment:'Never a dissapointment',rating: 4)
# restaurant4.reviews.create(comment:'Best chicken rice in London',rating: 4)
