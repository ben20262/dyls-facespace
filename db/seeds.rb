User.create(name: 'Dyl', email: 'dyl@dyl.com')
User.create(name: 'Ben', email: 'ben@dyl.com')
User.create(name: 'Mom', email: 'mom@dyl.com')

Seller.create(name: 'Toothless Tom', link: '1-800-notarealnumber.com')
Seller.create(name: 'Handy Hank', link: 'hank.com')
Seller.create(name: 'Low Larry', link: 'larry.gov')

Post.create(title: 'Car', content: 'very fast and good', price: 1200, link: 'definitelyacar', seller_id: 1)
Post.create(title: 'Red Car', content: 'not so good', price: 200, link: 'redcar', seller_id: 2)
Post.create(title: 'Blue Car', content: 'One Car, Two Car', price: 100, link: 'bluecar', seller_id: 3)

UserPost.create(user_id: 1, post_id: 1)
UserPost.create(user_id: 2, post_id: 2)
UserPost.create(user_id: 3, post_id: 3)
UserPost.create(user_id: 1, post_id: 2)
UserPost.create(user_id: 1, post_id: 3)