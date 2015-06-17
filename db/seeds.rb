User.create!([
                 {email: 'user@name.com', password: 'password', password_confirmation: 'password', firstname: 'Johny', lastname: 'Bravo', admin: true},
                 {email: 'testadmin@test.com', password: 'admin1234', password_confirmation: 'admin1234', firstname: 'John', lastname: 'Doe',  admin: true},
                 {email: 'testuser@test.com', password: 'user1234', password_confirmation: 'user1234', firstname: 'Sergio', lastname: 'Ramos', admin: false},
                 {email: 'testuser1@test.com', password: 'user11234', password_confirmation: 'user11234', firstname: 'Mickey', lastname: 'Mouse', admin: false}
])

Category.create!([
                     {name: 'Food'},
                     {name: 'Entertainment'},
                     {name: 'Life'},
                     {name: 'Work'}
                 ])