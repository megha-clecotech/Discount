puts "Starting seed data"

User.create_or_find_by(name: "Akash kumhare", email: "akash.kumhare@clecotech.com", password: "12345678")

User.create_or_find_by(name: "Megha Koshti", email: "megha.koshti@clecotech.com", password: "12345678")

User.create_or_find_by(name: "Shivani Shilpi", email: "shivani.shilpi@clecotech.com", password: "12345678")

Coupon.create_or_find_by( title: "Recharge",description: "this will recharge",code: "sdf345g",expiry_date: "12-03-2023", coins_needed: 10, user_id: 1)

Coupon.create_or_find_by( title: "Shopping",description: "this will get discount",code: "1131f345g",expiry_date: "15-04-2023", coins_needed: 0, user_id: 2)

Coupon.create_or_find_by( title: "Device",description: "this will device discount",code: "s845df345g",expiry_date: "13-06-2023", coins_needed: 0, user_id: 3)

Category.create_or_find_by(name:"Shopping")

Category.create_or_find_by(name:"Device")

Category.create_or_find_by(name:"Recharge")

puts "Created seed data"