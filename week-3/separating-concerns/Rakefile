require 'pg'

task :seed_test_db do
  connection = PG.connect :dbname => 'contact_book_test'
  connection.exec ('TRUNCATE TABLE contacts')
  connection.exec ("INSERT INTO contacts (name, address, tel) VALUES ('Bert', '94 Whitechapel Road', '01245960378');")
  connection.exec ("INSERT INTO contacts (name, address, tel) VALUES ('Sally', '53 Westfield Way', '04786992857');")
end

task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE contact_book;')
  connection.exec('CREATE DATABASE contact_book_test;')

  connection = PG.connect :dbname => 'contact_book'
  connection.exec('CREATE TABLE contacts (id SERIAL PRIMARY KEY, name VARCHAR(60), address VARCHAR(150), tel VARCHAR(20));')
  connection.exec ("INSERT INTO contacts (name, address, tel) VALUES ('Bert', '94 Whitechapel Road', '01245960378');")
  connection.exec ("INSERT INTO contacts (name, address, tel) VALUES ('Sally', '53 Westfield Way', '04786992857');")
  
  connection = PG.connect :dbname => 'contact_book_test'
  connection.exec('CREATE TABLE contacts (id SERIAL PRIMARY KEY, name VARCHAR(60), address VARCHAR(150), tel VARCHAR(20));')
end

task :teardown do
  connection = PG.connect
  connection.exec('DROP DATABASE contact_book;')
  connection.exec('DROP DATABASE contact_book_test')
end
