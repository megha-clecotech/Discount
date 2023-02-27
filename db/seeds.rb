puts "Starting seed data"

User.create_or_find_by(name: "Akash kumhare", email: "akash.kumhare@clecotech.com", password: "12345678")

User.create_or_find_by!(name: "Megha Koshti", email: "megha.koshti@clecotech.com", password: "12345678")

User.create_or_find_by(name: "Shivani Shilpi", email: "shivani.shilpi@clecotech.com", password: "12345678")



Category.create_or_find_by(name:"Shopping",maincategory_id:1)
Category.create_or_find_by(name:"Travel",maincategory_id:2)
Category.create_or_find_by(name:"Food & Dining",maincategory_id:3)
Category.create_or_find_by(name:"Recharge",maincategory_id:4)
Category.create_or_find_by(name:"Other Popular",maincategory_id:5)

Category.create_or_find_by(name:"Clothing",maincategory_id:1)
Category.create_or_find_by(name:"Footwear",maincategory_id:1)



Category.create_or_find_by(name:"Bus",maincategory_id:2)
Category.create_or_find_by(name:"Cab",maincategory_id:2)
Category.create_or_find_by(name:"Train",maincategory_id:2)
Category.create_or_find_by(name:"Flight",maincategory_id:2)
Category.create_or_find_by(name:"Hotel",maincategory_id:2)


Category.create_or_find_by(name:"Pizza",maincategory_id:3)
Category.create_or_find_by(name:"Food Delivery",maincategory_id:3)
Category.create_or_find_by(name:"Grocery",maincategory_id:3)


Category.create_or_find_by(name:"BillPayment",maincategory_id:4)
Category.create_or_find_by(name:"MobileRecharge",maincategory_id:4)
Category.create_or_find_by(name:"DTHRecharge",maincategory_id:4)


Category.create_or_find_by(name:"Mobile",maincategory_id:5)
Category.create_or_find_by(name:"Laptop",maincategory_id:5)
Category.create_or_find_by(name:"Movie Ticket",maincategory_id:5)

Coupon.create_or_find_by( title: "Recharge",description: "this will recharge",code: "sdf345g",expiry_date: "12-03-2023", coins_needed: 10, user_id: 1, app: 'Paytm',category_id: 4)
Coupon.create_or_find_by( title: "Shopping",description: "this will get discount",code: "1131f345g",expiry_date: "15-04-2023", coins_needed: 0, user_id: 2, app: 'PhonePe',category_id: 1)
Coupon.create_or_find_by( title: "Travel",description: "this will device discount",code: "s845df345g",expiry_date: "13-06-2023", coins_needed: 0, user_id: 3, app: 'AmazonPay',category_id: 2)
Coupon.create_or_find_by( title: "Food & Dining",description: "this will Food & Dining discount",code: "s845df345g",expiry_date: "23-06-2023", coins_needed: 0, user_id: 2, app: 'Mobikwik',category_id: 3)
Coupon.create_or_find_by( title: "Other Popular",description: "this will Other Popular discount",code: "s845df345g",expiry_date: "03-08-2023", coins_needed: 0, user_id: 3, app: 'GooglePay',category_id: 5)
Coupon.create_or_find_by( title: "Pizza",description: "this will Other Popular discount",code: "s845df345gasd",expiry_date: "03-08-2023", coins_needed: 0, user_id: 3, app: 'GooglePay',category_id: 6)
User.find(2).update(coins: 500)
puts "Created seed data"