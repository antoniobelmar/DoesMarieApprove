# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurant1 = Restaurant.create(name:'Antonios',description:'sells soups',image:'http://google.com',location:'London')
restaurant1.reviews.create(comment:'Always a good soup',rating: 4)


restaurant2 = Restaurant.create(name:'Allans',description:'sells steaks',image:'http://google.com',location:'London')
restaurant2.reviews.create(comment:'All right steak',rating: 2)

restaurant3 = Restaurant.create(name:'Marie',description:'does bottomless brunches',image:'http://google.com',location:'London')
restaurant3.reviews.create(comment:'Getting drunk with brunch',rating: 5)


restaurant4 = Restaurant.create(name:'Dania',description:'specializes in chicken rice',image:'http://google.com',location:'London')
restaurant4.reviews.create(comment:'Never a dissapointment',rating: 4)
restaurant4.reviews.create(comment:'Best chicken rice in London',rating: 4)
