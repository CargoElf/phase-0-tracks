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
require_relative 'db_setup'

db = SQLite3::Database.new("record_colection.db")
db.results_as_hash = true

def artist_entry(db, artist_name)
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
        exsists = true
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

album_entry(db, artist_entry(db,"Yet Another"), "Something", label_entry(db, "New Label"), 1, 1997)

