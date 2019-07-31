Complaint.delete_all
Category.delete_all
Type.delete_all
User.delete_all

puts"delete all data"

Region.create(name: 'Community of Madrid')
Province.create(name: 'Province of Madrid', region: Region.last)
City.create!(name: 'Madrid', province: Province.last)

User.create(email: 'test1@urbanfeed.org', password: '123456', name: "Test Uno", city_id: 1 )
User.create(email: 'jacobmorten@tanger.cc', password: 'chopit', name:'Jacob Morten', profession: 'model', mayor: true, city_id: 1)


Type.create(name: "Bridge")
Type.create(name: "Road")
Type.create(name: "Park")
Type.create(name: "Public Bulding")

type_1 = Type.find_by(name: 'Bridge')
type_2 = Type.find_by(name: 'Road')
type_3 = Type.find_by(name: 'Park')
type_4 = Type.find_by(name: 'Public Bulding')

Category.create(name: 'Safety')
Category.create(name: 'Maintenance')
Category.create(name: 'Accessibility')
Category.create(name: 'Sustainbility')
Category.create(name: 'Quality')

cat_1 = Category.find_by(name: 'Safety')
cat_2 = Category.find_by(name: 'Maintenance')
cat_3 = Category.find_by(name: 'Accessibility')

complaint_1 = Complaint.new(
  description: 'Huge crack on the road, almost broke my car this morning',
  address: "calle amor de dios, madrid",
  upvote: 3,
  user: User.last,
  category: cat_2,
  type: type_2,
  city: City.find(1),
)
complaint_1.remote_picture_url = "https://upload.wikimedia.org/wikipedia/commons/9/92/Crack_along_the_road_at_Uranohama_Port.jpg"
complaint_1.save!

complaint_2 = Complaint.new(
  description: 'The bridge barrier are not high enough',
  address: "14 calle Juan de Urbieta",
  upvote: 5,
  user: User.last,
  category: cat_1,
  type: type_1,
  city: City.find(1),
)
complaint_2.remote_picture_url = "http://www.mdsbarriers.com/images/mds%20tl4-26-crop-u9196.jpg?crc=322984659"
complaint_2.save!

complaint_3 = Complaint.new(
  description: 'To much dogs in the park i am scared for my child',
  address: "parque del retiro, madrid",
  upvote: 10,
  user: User.last,
  category: cat_1,
  type: type_3,
  city: City.find(1),
)
complaint_3.remote_picture_url = "http://www.mdsbarriers.com/images/mds%20tl4-26-crop-u9196.jpg?crc=322984659"
complaint_3.save!

complaint_4 = Complaint.new(
  description: 'The hospital is not efficient',
  address: "1 calle del Ancora",
  upvote: 2,
  user: User.last,
  category: cat_2,
  type: type_4,
  city: City.find(1),
)
complaint_4.remote_picture_url = "http://www.mdsbarriers.com/images/mds%20tl4-26-crop-u9196.jpg?crc=322984659"
complaint_4.save!

puts"create all data"












