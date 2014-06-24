# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Anton Admin", 
			password: "password1", 
			class_level: 17,
			contact_info: "always at home",
			last_activity: "22.5.2014",
			is_admin: true)

User.create(name: "Brigitte Tutnichtgut", 
			password: "password2", 
			class_level: 12,
			contact_info: "nie Zuhause",
			last_activity: "11.3.2014",
			is_admin: false)

User.create(name: "Stefan Streber", 
			password: "password3", 
			class_level: 11,
			contact_info: "immer sehr fleißig",
			last_activity: "17.5.2014",
			is_admin: false)
			
			
            