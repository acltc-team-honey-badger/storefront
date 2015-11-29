User.create!([
  {email: "mark@anyonecanlearntocode.com", encrypted_password: "$2a$10$QErQHpYhPDb443CFH3TqH.c1IRRWTacviYOp9d9GE9MRbQrHzC9zm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-26 01:27:21", last_sign_in_at: "2015-11-26 01:27:21", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Image.create!([
  {product_id: 1, image_url: "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/Tacos-De-Cochinita-Pibil-1024x686.jpg"},
  {product_id: 2, image_url: "http://upload.wikimedia.org/wikipedia/commons/b/b5/01_Tacos_al_Pastor.jpg"},
  {product_id: 3, image_url: "http://chicago.seriouseats.com/images/2012/10/20121004-224862-chicago-tacos-2-amigos-carne-asada.jpg"},
  {product_id: 4, image_url: "http://i.ytimg.com/vi/gN8IVq7Phn4/maxresdefault.jpg"},
  {product_id: 5, image_url: "http://stream1.gifsoup.com/view7/4201326/exploding-taco-in-slow-motion-o.gif"},
  {product_id: 6, image_url: "http://cdn.thedailybeast.com/content/dailybeast/articles/2013/03/12/this-taco-save-america/jcr:content/image.img.2000.jpg/1363113404466.cached.jpg"},
  {product_id: 1, image_url: "http://www.lapasaditatacoshop.com/wp-content/uploads/2012/10/4tacos-1020x388.jpg"},
  {product_id: 2, image_url: "http://cdn.thedailybeast.com/content/dailybeast/articles/2013/03/12/this-taco-save-america/jcr:content/image.img.2000.jpg/1363113404466.cached.jpg"},
  {product_id: 5, image_url: "http://tv-community-prod.s3.amazonaws.com/476896299dd44d899685e06ef39da5c6.jpg"},
  {product_id: 6, image_url: "http://img01.deviantart.net/8d74/i/2013/301/c/b/tiny_taco_by_fatalpotato-d6s794d.jpg"}
])
Order.create!([
  {user_id: 1, product_id: 3, quantity: 1, subtotal: "343.0", tax: "30.87", total: "373.87"}
])
Product.create!([
  {name: "Cochinita Pibil", price: "122.0", description: "Mouthwatering, slow-cooked pork on a corn tortilla, served with queso fresco, pickled onions y cilantro!", rating: nil, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "Al Pastor", price: "14.0", description: "Succulent, smoky, earthy, spiced and grilled pork strips seasoned with adobo seasoning. Served on a corn tortilla with cilantro y cebollas", rating: nil, available: nil, in_stock: true, supplier_id: 2, user_id: nil},
  {name: "Tacos de Asador", price: "343.0", description: "Skirt steak seasoned and grilled until crisp, served in a corn tortilla with cilantro y cebollas. Spicy habanero or medium chile salsa upon request. #awesome", rating: nil, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "Tacos de pescado", price: "121.0", description: "Fresh Mahi Mahi battered and flash-fried, served on a corn tortilla and garnished with slaw, crema and a side of avocado, lime and pico de gallo.", rating: 5, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "Exploding Taco", price: "10.0", description: "BOOM!", rating: nil, available: nil, in_stock: true, supplier_id: 2, user_id: nil},
  {name: "Carnitas", price: "34.0", description: "Twice-cooked mouthwatering pork tacos served on a corn tortilla con cebollas y cilantro", rating: nil, available: nil, in_stock: true, supplier_id: 1, user_id: nil}
])
Supplier.create!([
  {name: "Taco Hut", phone: "312.564.2342", email: "tacoh@gmail.com"},
  {name: "Taco Express", phone: "414.232.2342", email: "texpress@gmail.com"}
])
