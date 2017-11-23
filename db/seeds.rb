User.destroy_all
Pair.destroy_all

#Users
user1 = User.create!(
  email: "user1@email.com",
  name: "User1 Name",
  password: "123123"
)
user2 = User.create!(
  email: "user2@email.com",
  name: "User2 Name",
  password: "123123"
)
user3 = User.create!(
  email: "user3@email.com",
  name: "User3 Name",
  password: "123123"
)
user4 = User.create!(
  email: "user4@email.com",
  name: "User4 Name",
  password: "123123"
)

#Pairs

pairs = Pair.create!([
{
  day: "2017-11-12",
  student1: user1,
  student2: user2
},
{
  day: "2017-11-12",
  student1: user3,
  student2: user4
},
{
  day: "2017-11-13",
  student1: user1,
  student2: user3
},
{
  day: "2017-11-13",
  student1: user2,
  student2: user4
}])
