# DOES MARIE APPROVE?

## User Stories
```
As a restaurant owner,
so that i can get feedback on my business,
I can create my restaurant on my website via a from.

As a visitor,
so I can find restaurants,
I would like to visit a page where I can see all the restaurants

As a visitor,
so that I can make a decision about visiting a restaurant
I would like to see a single’s restaurant’s average rating

—————————————————————————————————————

As a restaurant owner,
so that i can keep my restaurant details up to date
I want to be able to edit  my restaurant from the website.

As a restaurant owner,
so that i can keep my restaurant details up to date
I want to be able to delete my restaurant from the website.

As a visitor, <br />
so I can share my experience <br />
I want to be able to leave a rating in my review

As a visitor,
so I can share my experience
I want to be able to leave a an optional comment in my review

As a visitor,
so I can find restaurants,
I would like to visit a page where I can see images of the restaurants

As a visitor
so I can be a member on the site
I would like to be able to sign up for the site

As a visitor
so I can be go through the website via my account
I would like to be able to login into the website

As a visitor
so I can be go out of the website
I would like to be able to logout of the website  
```
## Setup
```
$ git clone https://github.com/antoniobelmar/DoesMarieApprove.git
$ bundle install
$ bin/rails db:setup
$ bin/rails s
```

## Functionality
As a user you can sign up with name, email address and password. As a signed in user you can add, edit and delete restaurants. As a signed in user you can add reviews to restaurants.

## To-do
- Do unit tests
- Use carrier-wave for image uploads
- Add feature: edit and delete reviews
