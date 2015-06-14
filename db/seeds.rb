# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
                 {email: 'user@name.com', password: 'password', password_confirmation: 'password', firstname: 'Johny', lastname: 'Bravo', admin: true},
                 {email: 'testadmin@mvmanor.co.uk', password: 'testadminuser', password_confirmation: 'testadminuser', firstname: 'John', lastname: 'Doe',  admin: true},
                 {email: 'testuser@mvmanor.co.uk', password: 'testuseraccount', password_confirmation: 'testuseraccount', firstname: 'Sergio', lastname: 'Ramos', admin: false},
                 {email: 'testcustomer@customer.co.uk', password: 'testcustomeruser', password_confirmation: 'testcustomeruser', firstname: 'Mickey', lastname: 'Mouse', admin: false}
             ])