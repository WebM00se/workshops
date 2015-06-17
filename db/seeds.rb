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

Product.create!([
                    {title: 'Cake', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                                                  ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                                                  faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                                                  magna, a vestibulum lacus semper id. Donec rutrum sit amet nunc eu
                                                  endrerit. Etiam vitae mauris sed tortor aliquet porttitor.', price: 213,
                     category_id: 1, user_id: 1},
                    {title: 'Fish', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                                                  ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                                                  faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                                                  magna, a vestibulum lacus semper id. Donec rutrum sit amet nunc eu
                                                  endrerit. Etiam vitae mauris sed tortor aliquet porttitor.', price: 123,
                     category_id: 1, user_id: 2},
                    {title: 'Carrot', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                                                  ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                                                  faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                                                  magna, a vestibulum lacus semper id. Donec rutrum sit amet nunc eu
                                                  endrerit. Etiam vitae mauris sed tortor aliquet porttitor.', price: 23,
                    category_id: 1, user_id: 1},

                    {title: 'Game', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                                                  ut eros consequat gravida et non mauris. Curabitur ac leo odio.
                                                  magna, a vestibulum lacus semper id. Donec rutrum sit amet nunc eu
                                                  endrerit. Etiam vitae mauris sed tortor aliquet porttitor.', price: 213,
                     category_id: 2, user_id: 1},
                    {title: 'Football', description: 'Curabitur ac leo odio. Fusce
                                                  faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                                                  magna, a vestibulum lacus semper id. Donec rutrum sit amet nunc eu
                                                  endrerit. Etiam vitae mauris sed tortor aliquet porttitor.', price: 123,
                     category_id: 2, user_id: 3},

                    {title: 'Health', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                                                  ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                                                  faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                                                  magna, a vestibulum lacus semper id.', price: 23,
                     category_id: 3, user_id: 4}
                ])

Review.create!([
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                   rating: 5, product_id: 1, user_id: 1
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 3, product_id: 1, user_id: 3
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 5, product_id: 2, user_id: 1
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 3, product_id: 2, user_id: 4
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 5, product_id: 5, user_id: 2
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 1, product_id: 1, user_id: 1
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 5, product_id: 1, user_id: 3
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 2, product_id: 3, user_id: 2
                   },
                   {content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu leo
                              ut eros consequat gravida et non mauris. Curabitur ac leo odio. Fusce
                              faucibus est sit amet viverra malesuada. Phasellus efficitur ullamcorper
                              magna, a vestibulum lacus semper id.',
                    rating: 2, product_id: 6, user_id: 4
                   }
               ])