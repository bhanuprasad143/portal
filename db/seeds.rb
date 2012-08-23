# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create!({
	email:    'admin@admin.com',
	password: 'password'
})

Dir[Rails.root.join('db', 'devseeds', '*.rb').to_s].each do |file|
  puts "Loading db/devseeds/#{file.split(File::SEPARATOR).last}"
  load(file)
end