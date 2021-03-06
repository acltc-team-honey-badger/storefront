User.create!([
  {email: "mark@anyonecanlearntocode.com", password: "password", role_id: 1},
  {email: "markeban@yahoo.com", password: "password", role_id: 2}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 4, order_id: 2, status: "purchased"},
  {user_id: 1, product_id: 3, quantity: 2, order_id: 2, status: "purchased"},
  {user_id: 1, product_id: 5, quantity: 1, order_id: 2, status: "purchased"},
  {user_id: 1, product_id: 4, quantity: 2, order_id: 3, status: "purchased"},
  {user_id: 1, product_id: 3, quantity: 1, order_id: 4, status: "purchased"},
  {user_id: 1, product_id: 5, quantity: 2, order_id: 4, status: "purchased"},
  {user_id: 1, product_id: 6, quantity: 3, order_id: nil, status: "removed"},
  {user_id: 1, product_id: 1, quantity: 1, order_id: 5, status: "purchased"},
  {user_id: 1, product_id: 4, quantity: 3, order_id: 5, status: "purchased"},
  {user_id: 1, product_id: 1, quantity: 2, order_id: 6, status: "purchased"}
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
  {user_id: 1, subtotal: "343.0", tax: "30.87", total: "373.87"},
  {user_id: 1, subtotal: "1184.0", tax: "106.56", total: "1290.56"},
  {user_id: 1, subtotal: "242.0", tax: "21.78", total: "263.78"},
  {user_id: 1, subtotal: "363.0", tax: "32.67", total: "395.67"},
  {user_id: 1, subtotal: "485.0", tax: "43.65", total: "528.65"},
  {user_id: 1, subtotal: "244.0", tax: "21.96", total: "265.96"}
])
Product.create!([
  {name: "Cochinita Pibil", price: "122.0", description: "Mouthwatering, slow-cooked pork on a corn tortilla, served with queso fresco, pickled onions y cilantro!", rating: nil, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "Al Pastor", price: "14.0", description: "Succulent, smoky, earthy, spiced and grilled pork strips seasoned with adobo seasoning. Served on a corn tortilla with cilantro y cebollas", rating: nil, available: nil, in_stock: true, supplier_id: 2, user_id: nil},
  {name: "Tacos de Asador", price: "343.0", description: "Skirt steak seasoned and grilled until crisp, served in a corn tortilla with cilantro y cebollas. Spicy habanero or medium chile salsa upon request. #awesome", rating: nil, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "Tacos de pescado", price: "121.0", description: "Fresh Mahi Mahi battered and flash-fried, served on a corn tortilla and garnished with slaw, crema and a side of avocado, lime and pico de gallo.", rating: 5, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "Exploding Taco", price: "10.0", description: "BOOM!", rating: nil, available: nil, in_stock: true, supplier_id: 2, user_id: nil},
  {name: "Carnitas", price: "34.0", description: "Twice-cooked mouthwatering pork tacos served on a corn tortilla con cebollas y cilantro", rating: nil, available: nil, in_stock: true, supplier_id: 1, user_id: nil},
  {name: "", price: nil, description: "", rating: nil, available: nil, in_stock: true, supplier_id: nil, user_id: 1},
  {name: "", price: nil, description: "", rating: nil, available: nil, in_stock: true, supplier_id: nil, user_id: 1},
  {name: "", price: nil, description: "", rating: nil, available: nil, in_stock: true, supplier_id: nil, user_id: 1},
  {name: "", price: nil, description: "", rating: nil, available: nil, in_stock: true, supplier_id: nil, user_id: 1},
  {name: "", price: nil, description: "", rating: nil, available: nil, in_stock: true, supplier_id: 3, user_id: 1}
])
Role.create!([
  {name: "admin"},
  {name: "shopper"}
])
Supplier.create!([
  {name: "Taco Hut Express", phone: "312.564.2342", email: "tacohut@gmail.com", active: false},
  {name: "Taco Express", phone: "414.232.2342", email: "texpress@gmail.com", active: true},
  {name: "Johnny's Tacos", phone: "415.345.1212", email: "jtaco@gmail.com", active: true}
])
