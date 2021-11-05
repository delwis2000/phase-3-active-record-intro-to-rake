namespace :db do
    desc 'migrate changes to your database'
    task migrate: :environment do
      Student.create_table
    end
  end

  namespace :db do

    # ...
  
    desc 'seed the database with some dummy data'
    task seed: :environment do
      require_relative './db/seeds'
    end
  end