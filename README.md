## Database Server Tech Test

# The task of this tech test was the following

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."

# Technologies

To achieve everything I was tasked with I chose to use the following technologies:

  - Ruby
  - Sinatra framework
  - Rspec
  - Capybara
  - Launchy

# How to

Run the app

  - Clone and change into this repository
  - Run bundle install in the command line
  - Run 'ruby app.rb' in the command line
  - Open your browser of choice and navigate to 'http://localhost:4000/'

Use the app

 To add to the Database

  - Visit "http://localhost:4000/set?" and append a key and value eg "name=Lawrence"
    your key and value will now be saved in the Database.

To retrieve data from Database

  - Visit "http://localhost:4000/get?" and append 'key=' and then your key eg "key=name"
    your value will now be retrieved from the database.

    Enjoy,
    Lawrence Dawson
