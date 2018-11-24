User.create!([{name: "Zvonimir Kolumbic", email: "zvonimir.kolumbic1@ri.t-com.hr", password: "zv0n1m1r", 
    password_confirmation: "zv0n1m1r", admin: true, activated: true, activated_at: Time.zone.now},
  {name: "Marija Kolumbic", email: "marija.kolumbic@post.t-com.hr", password: "mar10kol20",
    password_confirmation: "mar10kol20", activated: true, activated_at: Time.zone.now}
])

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(4)
20.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
