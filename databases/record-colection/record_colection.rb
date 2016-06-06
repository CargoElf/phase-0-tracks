=begin
Duplicate ID Check
  input: database, artist or label
  output: new database entry

Album Entry
  input: user input
  Take user input and insert into Album table
  output: new entry in Album table

Artist Entry
  input: string
  Check input against each Artist in Artist Table
    If there is a match
      do not create a new Artist entry
    Otherwise create a new Artist entry
  output: Artist ID #
  
Label Entry
  input: string
  Check input against each Label in Label Table
    If there is a match
      do not create a new Label entry
    Otherwise create a new Label entry
  output: Artist ID #
=end

require 'sqlite3'
require 'faker'
require_relative 'db_setup'

db = SQLite3::Database.new("record_colection.db")
db.results_as_hash = true

#def artist_entry_exists(db, entry) #need to explore more.
#  if db.execute("SELECT a.artist FROM artists a WHERE a.artist = #{entry}")
#  end
#end

#Checks if entry exists and if not, enters it into artist
#returns id. Should be able to refactor
def artist_entry(db, artist_name) #
  artists = db.execute("SELECT * FROM artist")
  exsists = false
  id = nil
  artists.each do |row|
    if row['artist'] == artist_name
      exsists = true
      id = row['id']
    end
  end
  if exsists == false
    db.execute("INSERT INTO artist (artist) VALUES (?)", [artist_name])
    artists = db.execute("SELECT * FROM artist")
      artists.each do |row|
        if row['artist'] == artist_name
        exsists = true
        id = row['id']
        end
      end
  end
  id
end

=begin # Need to look into this more.
def label_entry(db, label_name)
  entry = db.execute("SELECT * FROM label WHERE label = '#{label_name}'")
  if entry == []
    db.execute("INSERT INTO label (label) VALUES (?)", [label_name])
    datadump = db.execute("SELECT id FROM label WHERE label = '#{label_name}'")
    id = datadump['id']
  else
    datadump = db.execute("SELECT id FROM label WHERE label = '#{label_name}'")
    id = datadump['id']
  end
  id
end
=end

#Checks if entry exists and if not, enters it into label
#returns id. Should be able to refactor
def label_entry(db, label_name)
  labels = db.execute("SELECT * FROM label")
  exsists = false
  id = nil
  labels.each do |row|
    if row['label'] == label_name
      exsists = true
      id = row['id']
    end
  end
  if exsists == false
    db.execute("INSERT INTO label (label) VALUES (?)", [label_name])
    labels = db.execute("SELECT * FROM label")
      labels.each do |row|
        if row['label'] == label_name
        id = row['id']
        end
      end
  end
  id
end

def album_entry(db, artist, title, label, rating, release_date)
  db.execute(
    "INSERT INTO albums (artist_id, title, label_id, rating, release_date) 
      VALUES (?, ?, ?, ?, ?)",
      [artist, title, label, rating, release_date]
  )
end

def view_colection(db, selection)
  case selection
  when '1'
    collection = db.execute("
      SELECT ar.artist,
         al.title,
         l.label,
         al.rating,
         al.release_date
      FROM artist ar
         INNER JOIN
         albums al ON ar.id = al.artist_id
         INNER JOIN
         label l ON l.id = al.label_id"
    )
  when '2'
    puts "What artist do you wish to search?"
    answer = gets.chomp 
    collection = db.execute("
      SELECT ar.artist,
         al.title,
         l.label,
         al.rating,
         al.release_date
      FROM artist ar
         INNER JOIN
         albums al ON ar.id = al.artist_id
         INNER JOIN
         label l ON l.id = al.label_id
      WHERE ar.artist = '#{answer}'"
    )
  when '3'
    puts "What label do you wish to search?"
    answer = gets.chomp 
    collection = db.execute("
      SELECT ar.artist,
         al.title,
         l.label,
         al.rating,
         al.release_date
      FROM artist ar
         INNER JOIN
         albums al ON ar.id = al.artist_id
         INNER JOIN
         label l ON l.id = al.label_id
      WHERE l.label = '#{answer}'"
    )    
  end
  collection.each do |record|
    puts "Artist: #{record['artist']} Album: #{record['title']} Label: #{record['label']} Rating: #{record['rating']} Release Date: #{record['release_date']}"
  end
end

def delete_entry(db)
  collection = db.execute("
    SELECT al.id,
       ar.artist,
       al.title,
       l.label,
       al.rating,
       al.release_date
     FROM artist ar
        INNER JOIN
        albums al ON ar.id = al.artist_id
        INNER JOIN
        label l ON l.id = al.label_id"
  )
  collection.each do |record|
    puts "Number: #{record['id']} Artist: #{record['artist']} Album: #{record['title']} Label: #{record['label']} Rating: #{record['rating']} Release Date: #{record['release_date']}"
  end
  puts "Enter the number corresponding to the entry you wish to delete."
  puts "If you don't wish to delete anything, press enter"
  answer = gets.chomp
  if answer != ""
    db.execute("DELETE FROM albums WHERE id = #{answer.to_i}")
  end
end

response = nil
until response == 'quit'
  puts "Menu"
  puts "1. Add Records"
  puts "2. View Records"
  puts "3. Delete Records"
  puts "Enter 'quit' to quit."
  response = gets.chomp.downcase
  case response
  when '1'
    answer = 'y'
    until answer == 'n'
      puts "Lets enter some vinyl info!"
      puts "What's the artist's name?"
      artist = gets.chomp
      puts "What's the title of the album?"
      title = gets.chomp
      puts "what's the label that published it?"
      label = gets.chomp
      puts "What would you give it out of 5 stars?"
      rating = gets.chomp.to_i
      puts "What year did it come out?"
      release_date = gets.chomp.to_i
      album_entry(db, artist_entry(db, artist), title, label_entry(db, label), rating , release_date)
      puts "Would you like to enter another record? y/n"
      answer = gets.chomp[0].downcase
    end
  when '2'
    answer = 'y'
    until answer == 'n'
      puts "Would you like to..."
      puts "1. View all records"
      puts "2. View an artist"
      puts "3. View a label"
      selection = gets.chomp
      view_colection(db, selection)
      puts "Would you like to view again? y/n"
      answer = gets.chomp[0].downcase
    end
  when '3'
    answer = 'y'
    until answer == 'n'
      delete_entry(db)
      puts "Would you like to delete another? y/n"
      answer = gets.chomp[0].downcase
    end
  end
end

=begin #Populate with some test data
possible_labels = ["Fun Times", "BLVD Records", "4AD", "Big Time Records", "Sonic Club", "Angry Sounds", "Sweet Sounds"]
possible_artists = ["Twitch of Wrench", "Sexual Mite", "Process Luna", "Inertia Forever", "Heat Death", "Rap Man", "Chartreuse Windshield", "Skull Cider"]
50.times do
  album_entry(db, artist_entry(db, possible_artists.sample), Faker::App.name, label_entry(db, possible_labels.sample), rand(6) , (rand(20) + 1996))
end
=end