# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

This project needed a few bugs to be checked out, and some features upgraded!

Here is what was added -

### Sold out sticker

If product quantity is less than one - sold out badge will display.
![Sold out Sticker](https://raw.githubusercontent.com/niccmac/jungle-ruby/master/public/images/Screen%20Shot%202022-05-11%20at%203.37.57%20PM.png)

### Admin for categories

With authentication admin can add categories and view all categories.

![drop down](https://github.com/niccmac/jungle-ruby/blob/master/public/images/Screen%20Shot%202022-05-11%20at%203.38.12%20PM.png)

![add new](https://github.com/niccmac/jungle-ruby/blob/master/public/images/Screen%20Shot%202022-05-11%20at%203.38.25%20PM.png)

### Login/Signup

User login with secure passwords, and minimum password lengths. Will check if user email already exisits.

Orders show user email.

![login](https://github.com/niccmac/jungle-ruby/blob/master/public/images/Screen%20Shot%202022-05-11%20at%203.38.35%20PM.png)
![order](https://github.com/niccmac/jungle-ruby/blob/master/public/images/Screen%20Shot%202022-05-11%20at%203.39.33%20PM.png)

### No order redirect

![No orders in cart](https://github.com/niccmac/jungle-ruby/blob/master/public/images/Screen%20Shot%202022-05-11%20at%203.39.42%20PM.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
