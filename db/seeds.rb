# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# # # seed data user 1
u1 = User.create({
        email:"random@mail.com",
        password:"123"
      })

u1.posts.create({
        title:"Hello and welcome",
        body:"We hope this blog will help to convince you that Rachel Lee is a suitable candidate for the Ruby Developer position at RingMD."
      })
