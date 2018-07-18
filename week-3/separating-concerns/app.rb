require 'sinatra/base'
require 'pg'
require './lib/contact'

class ContactBook < Sinatra::Base

  get '/' do
    redirect '/contacts'
  end

  get '/contacts' do
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(:dbname => 'contact_book_test')
    else
      connection = PG.connect(:dbname => 'contact_book')
    end

    @contacts = connection.exec('SELECT * FROM contacts').map do |contact|
      Contact.new(contact['id'], contact['name'], contact['address'], contact['tel'])
    end
    erb :index
  end

  get '/contacts/:id' do
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(:dbname => 'contact_book_test')
    else
      connection = PG.connect(:dbname => 'contact_book')
    end

    result = connection.exec("SELECT * FROM contacts WHERE id = #{params[:id]}")
    @contact = result.map{ |contact| Contact.new(contact['id'], contact['name'], contact['address'], contact['tel']) }.first
    erb :contact
  end

  get '/contact/new' do
    erb :new
  end

  post '/contact/create' do
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(:dbname => 'contact_book_test')
    else
      connection = PG.connect(:dbname => 'contact_book')
    end

    connection.exec("INSERT INTO contacts (name, address,tel) VALUES('#{params[:name]}', '#{params[:address]}', '#{params[:tel]}')")
    redirect '/contacts'
  end

  get '/contact/edit' do
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(:dbname => 'contact_book_test')
    else
      connection = PG.connect(:dbname => 'contact_book')
    end

    result = connection.exec("SELECT * FROM contacts WHERE id = #{params[:id]}")
    @contact = result.map{ |contact| Contact.new(contact['id'], contact['name'], contact['address'], contact['tel']) }.first
    erb :edit
  end

  post '/contact/update' do
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(:dbname => 'contact_book_test')
    else
      connection = PG.connect(:dbname => 'contact_book')
    end

    connection.exec("UPDATE contacts SET (name, address, tel) = ('#{params[:name]}', '#{params[:address]}', '#{params[:tel]}') WHERE id = '#{params[:id]}'")
    redirect '/contacts'
  end

  post '/contact/delete' do
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(:dbname => 'contact_book_test')
    else
      connection = PG.connect(:dbname => 'contact_book')
    end

    connection.exec("DELETE FROM contacts WHERE id = #{params[:id]}")
    redirect '/contacts'
  end

  run! if app_file == $0
end
