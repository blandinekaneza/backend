Getting up and running

$ git clone git https://github.com/blandinekaneza/backend.git
$ bundle install
rake db:migrate

username: backend
password: backend

/fetch_data : I was not able to do this endpoint, if you could guide me how to do it! thank you!

/missions : return all the missions

/missions/:id​​ ​​- return the mission with this id.
e.g /missions/1 -> this returns the mission with id:1

/missions/search​​ ​​- return all missions where a search term that the user submits is found in the missions description.
e.g /missions/search?term=ABS -> this returns the mission with ABS term in the description

/payloads​​ - return all payloads

/payloads/:id​​ - return the payload with this id
e.g /payloads/1 -> this returns the payload with id:1

/nationalities​​ - return all nationalities

/nationalities/:id​​ - return the nationality with this id
e.g /nationalities/1 -> this returns the nationality with id:1

/nationalities/:id/payloads​​ - return all payloads for this
nationality
e.g /nationalities/1/payloads -> this returns all the payloads for the nationality with id:1

/nationalities/:id/missions​​ - return all missions for this nationality
e.g /nationalities/1/missions/nationalities/1/missions -> this returns all the missions for the nationality with id:1
p.s how can I use the distinct so that I can avoid duplicates?

For building JSON APIs, I used this gem https://github.com/cerebris/jsonapi-resources

I am still struggling with the commit messages, could you help me out and suggest how can I group the changes!