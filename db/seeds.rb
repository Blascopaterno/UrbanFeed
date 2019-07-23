User.delete_all
Type.delete_all
Category.delete_all
Complaint.delete_all

puts"delete all data"

User.create(email: 'test1@urbanfeed.org', password: '123456', name: "Test Uno" )

Type.create(name: "Bridge")
Type.create(name: "Road")
Type.create(name: "Parc")
Type.create(name: "Public Bulding")

type_1 = Type.find_by(name: 'Bridge')
type_2 = Type.find_by(name: "Road")

Category.create(name: 'Safety')
Category.create(name: 'Maintenance')
Category.create(name: 'Accessibility')
Category.create(name: 'Sustainbility')
Category.create(name: 'Quality')

cat_1 = Category.find_by(name: 'Safety')
cat_2 = Category.find_by(name: 'Maintenance')


Complaint.create(
  description: 'Huge crack on the road, almost broke my car this morning',
  address: "calle monteleon 23",
  upvote: 3,
  picture: 'https://upload.wikimedia.org/wikipedia/commons/9/92/Crack_along_the_road_at_Uranohama_Port.jpg',
  user: User.last,
  category: cat_2,
  type: type_2,
)

Complaint.create(
  description: 'The bridge barrier are not high enough',
  address: "calle ancora 10",
  upvote: 5,
  picture: "http://www.mdsbarriers.com/images/mds%20tl4-26-crop-u9196.jpg?crc=322984659",
  user: User.last,
  category: cat_1,
  type: type_1,
)
