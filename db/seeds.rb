# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(corporate_name: 'Jhonnes & McDougal Corporate', fantasy_name: 'J & M',
               email: 'jm@gmail.com', is_active: true)
Company.create(corporate_name: 'Jhonnes & Jameson Corp.', fantasy_name: 'JoJa',
               email: 'comercial@joja.com', is_active: true)
Company.create(corporate_name: 'Moran & Heart Corporate II', fantasy_name: 'M & H',
               email: 'comercial@mh.com', is_active: true)
