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

db = SQLite3::Database.new("record_colection.db")
db.results_as_hash = true

create_artist_table = <<-SQL
  CREATE TABLE IF NOT EXISTS artist(
    id INTEGER PRIMARY KEY,
    artist VARCHAR(255)
  )
SQL

create_label_table = <<-SQL
  CREATE TABLE IF NOT EXISTS label(
    id INTEGER PRIMARY KEY,
    label VARCHAR(255)
  )
SQL

create_album_table = <<-SQL
  CREATE TABLE IF NOT EXISTS albums(
    id INTEGER PRIMARY KEY,
    artist_id INTEGER,
    title VARCHAR(255), 
    label_id INTEGER,
    rating INTEGER,
    release_date INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artist(id),
    FOREIGN KEY (label_id) REFERENCES label(id)
  )
SQL

db.execute(create_artist_table)
db.execute(create_label_table)
db.execute(create_album_table)

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

album_entry(db, artist_entry(db,"Yet Another"), "Something", label_entry(db, "A Bad One"), 1, 1997)

