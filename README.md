Ruby Version: 3.0.2 - Rails Version: 6.1.4.1 - React Version: 17.0.2

# Pickup Takehome

Pickup Takehome is a takehome to make pickups with a date and location, and then track the status of that pickup

## Installation

Do the following in the respective directories.

### Backend

Install and setup postgresql then clone the repository. Run ```$ bundle install```. Then run ```$ rake db:create``` then ```$ rake db:migrate``` to setup the database. Finally run ```$ rails s -p 3001``` to run the server locally in development mode. The Frontend has a proxy set up to send requests here.

### Frontend

Run up ```npm install``` to install dependencies, then ```npm start``` to start up the server in development mode.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SolomonRFeldman/stocky. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).