User.create!([{name: "Zvonimir Kolumbic", email: "zvonimir.kolumbic1@ri.t-com.hr", password: "zv0n1m1r", password_confirmation: "zv0n1m1r", admin: true},
  {name: "Marija Kolumbic", email: "marija.kolumbic@post.t-com.hr", password: "mar10kol20", password_confirmation: "mar10kol20"}
])

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
