
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
