require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

#creates comedians to populate db
Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
Comedian.create(name: "Joe Rogan", age: 51, city: "Newark, NJ")
Comedian.create(name: "Gilbert Gottfried", age: 63, city: "Brooklyn, NY")
Comedian.create(name: "Jimmy Carr", age: 46, city: "London, England")
Comedian.create(name: "Doug Stanhope", age: 51, city: "Worcester, MA")
Comedian.create(name: "Bert Kreischer", age: 46, city: "Tampa, FL")
Comedian.create(name: "Janeane Garofalo", age: 54, city: "Newton, NJ")
Comedian.create(name: "George Carlin", age: 71, city: "Manhattan, NY")
Comedian.create(name: "Jerry Seinfeld", age: 64, city: "Brooklyn, NY")
Comedian.create(name: "Mitch Hedberg", age: 37, city:"Saint Paul, MN")
Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
Comedian.create(name: "Lewis Black", age: 70, city: "Washington, D.C.")

#lines below associates a comedian with all of the specials they have been in
Comedian.find_by(name: "Doug Stanhope").specials.create(
  [
    {name: "Oslo: Burning the Bridge to Nowhere", runtime: 89, thumbnail: "https://m.media-amazon.com/images/M/MV5BZjNmZjJlYjMtYzE5ZS00NjMxLWIxZGQtZDVhNzJjMzRlYzAyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg"},
    {name: "Before Turning the Gun on Himself", runtime: 67, thumbnail: "https://m.media-amazon.com/images/M/MV5BZTFiMWZlYTYtOWNlMy00ZWFiLWEyNmEtYzk5NjQwMmRmNThmXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_SY1000_CR0,0,706,1000_AL_.jpg"},
    {name: "Beer Hall Putsch", runtime: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAyNTAwODgyNV5BMl5BanBnXkFtZTgwNzg3ODM3NDE@._V1_.jpg"},
    {name: "No Place Like Home", runtime: 71, thumbnail:"https://m.media-amazon.com/images/M/MV5BYjQyZDdjYTItODhkNC00ZmQxLWEzMzMtOTFjY2U2NTE1ZmNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_.jpg"}
])

Comedian.find_by(name: "George Carlin").specials.create(
  [
    {name: "On Location: George Carlin at USC", runtime: 85, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTg0NjkxNDQ3MF5BMl5BanBnXkFtZTcwNjg5NjcxMQ@@._V1_.jpg"},
    {name: "Carlin at Carnegie", runtime: 60, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjE3ODg5MTUyMV5BMl5BanBnXkFtZTcwNzgxNDEyMQ@@._V1_.jpg"},
    {name: "Carlin on Campus", runtime: 60, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTIyMzk4NjA3OV5BMl5BanBnXkFtZTcwOTY4ODYyMQ@@._V1_.jpg"},
    {name: "Playin' with Your Head", runtime: 60, thumbnail:"https://m.media-amazon.com/images/M/MV5BODAwMzE0MDM4NF5BMl5BanBnXkFtZTYwMzgzMTg5._V1_.jpg"},
    {name: "What Am I Doing in New Jersey?", runtime: 61, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjA3ODI4NDExNl5BMl5BanBnXkFtZTcwMzY1MjYxMQ@@._V1_.jpg"},
    {name: "Doin' It Again", runtime: 60, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjg4MTYwNjY0NF5BMl5BanBnXkFtZTcwNzg1OTkyMQ@@._V1_.jpg"},
    {name: "Jammin' in New York", runtime: 59, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTI2MjA5NjEwOF5BMl5BanBnXkFtZTcwMDYzOTIzMQ@@._V1_.jpg"}
])

Comedian.find_by(name: "Gilbert Gottfried").specials.create(
  [
    {name: "Night of Too Many Stars", runtime: 130, thumbnail:"https://m.media-amazon.com/images/M/MV5BMDRlNWFhNTctNTYzMC00ZGFjLWJiNDMtM2U5YTlkOTU1YjA1XkEyXkFqcGdeQXVyMjQwMjk0NjI@._V1_SY1000_SX675_AL_.jpg"},
    {name: "The Nasty Show Hosted by Artie Lange", runtime: 74, thumbnail:"https://m.media-amazon.com/images/M/MV5BODAwZTE0Y2QtNDlhMC00NDAzLWIyZjktMzY3NDViMTI3NDhhXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg"},
    {name: "Comedy Central Roast of Roseanne", runtime: 90, thumbnail:"https://m.media-amazon.com/images/M/MV5BZDBjZTNhZmQtMzZmMi00YzJlLThlZjQtOGZlMmJiYWY3ZjFiXkEyXkFqcGdeQXVyNTM2OTE3NzM@._V1_.jpg"},
    {name: "Comedy Central Roast of Denis Leary", runtime: 99, thumbnail:"https://m.media-amazon.com/images/M/MV5BNDM5NTAyNzkxOV5BMl5BanBnXkFtZTcwNjcxMzYyMQ@@._V1_.jpg"}
])

Comedian.find_by(name: "Jerry Seinfeld").specials.create(
[
  {name: "Stand-Up Confidential", runtime: 55, thumbnail:"https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_.jpg"},
  {name: "I'm Telling You for the Last Time", runtime: 75, thumbnail:"https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg"},
  {name: "Jerry Before Seinfeld", runtime: 62, thumbnail:"https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg"}
])

Comedian.find_by(name: "Bill Burr").specials.create(
[
  {name: "Walk Your Way Out", runtime: 117, thumbnail:"https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg"},
  {name: "I'm Sorry You Feel That Way", runtime: 80, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg"},
  {name: "You People Are All The Same", runtime: 69, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"},
  {name: "Let It Go", runtime: 65, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_.jpg"},
  {name: "Why Do I Do This?", runtime: 55, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjI3OTcxNTA1MV5BMl5BanBnXkFtZTgwNDY2MjA2MDE@._V1_.jpg"}
])

Comedian.find_by(name: "Jimmy Carr").specials.create(
  [
    {name: "Funny Business", runtime: 62, thumbnail:"https://m.media-amazon.com/images/M/MV5BM2NjMGI1YjktMjQ5Zi00M2ZjLTg5MmQtYWQ0OTVkOTVmODI2XkEyXkFqcGdeQXVyNTMyNzI0Mjk@._V1_.jpg"},
    {name: "Laughing and Joking", runtime: 91, thumbnail:"https://m.media-amazon.com/images/M/MV5BNTVhOWRkMDMtZWViNi00MTIxLTk1ZjctN2MwZjRmZWFkMjk4XkEyXkFqcGdeQXVyNjMxMzM3NDI@._V1_SY1000_CR0,0,709,1000_AL_.jpg"},
    {name: "Being Funny", runtime: 102, thumbnail:"https://m.media-amazon.com/images/M/MV5BZmNkOGYxNzgtNWQ2Zi00OTIxLTlhZGItNmZhZThlYjAxMjI3XkEyXkFqcGdeQXVyNjMxMzM3NDI@._V1_SY1000_CR0,0,698,1000_AL_.jpg"},
    {name: "Making People Laugh", runtime: 113, thumbnail:"https://m.media-amazon.com/images/M/MV5BMGM1MjBkYWQtNjNlOS00YzM1LTg2MDYtNmQxOThjYzUzODI3XkEyXkFqcGdeQXVyNjMxMzM3NDI@._V1_SY1000_CR0,0,708,1000_AL_.jpg"}
])

Comedian.find_by(name: "Bert Kreischer").specials.create(
[
  {name: "Bert Kreischer: Comfortably Dumb", runtime: 75, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTgwNjI5NTczNl5BMl5BanBnXkFtZTgwOTYzMzA2MDE@._V1_.jpg"},
  {name: "Bert Kreischer: The Machine", runtime: 70, thumbnail:"https://m.media-amazon.com/images/M/MV5BN2U5ZTk3OWUtNzBmOC00MjkzLWFmZWQtNTQyNWEyYTFmOWRlXkEyXkFqcGdeQXVyMjI2OTg4ODA@._V1_SY1000_CR0,0,666,1000_AL_.jpg"}
])

Comedian.find_by(name: "Janeane Garofalo").specials.create(
[
  {name: "Michael Bolton's Big, Sexy Valentine's Day Special", runtime: 60, thumbnail:"https://m.media-amazon.com/images/M/MV5BZDc1ZjQ4YjgtYzMxMS00M2FhLWI3ZTctMDdkOTM2MzNkZWRmXkEyXkFqcGdeQXVyNjU2ODM5MjU@._V1_.jpg"}
])

Comedian.find_by(name: "Mitch Hedberg").specials.create(
[
  {name: "Do You Believe in Gosh?", runtime: 39, thumbnail:"https://upload.wikimedia.org/wikipedia/en/f/f8/Doyoubelieveingosh.jpg"},
  {name: "Mitch All Together", runtime: 39, thumbnail:"https://upload.wikimedia.org/wikipedia/en/d/d2/Mitch_All_Together_Album_Cover.JPG"},
  {name: "Strategic Grill Locations", runtime: 53, thumbnail:"https://upload.wikimedia.org/wikipedia/en/4/44/Strategic_Grill_Locations.jpg"}
])

Comedian.find_by(name: "Lewis Black").specials.create(
[
  {name: "Black on Broadway", runtime: 58, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjI4ODM5MjQwMl5BMl5BanBnXkFtZTgwNDk2ODkwMzE@._V1_.jpg"},
  {name: "Black to the Future", runtime: 49, thumbnail:"https://m.media-amazon.com/images/M/MV5BMDdhMzc3ZTEtMzg4ZC00ZjYzLWE3MzktM2I2ZTA0MGRlNjI5XkEyXkFqcGdeQXVyNjU2MTA3OTY@._V1_.jpg"},
  {name: "In God We Rust", runtime: 59, thumbnail:"https://m.media-amazon.com/images/M/MV5BMjI2MzEyODY3MF5BMl5BanBnXkFtZTgwMDk5NjA2MDE@._V1_.jpg"},
  {name: "Stark Raving Black", runtime: 80, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTU0OTc1OTQ1N15BMl5BanBnXkFtZTcwNDc5NTE4Mg@@._V1_SY1000_CR0,0,692,1000_AL_.jpg"}
])

Comedian.find_by(name: "Robin Williams").specials.create(
[
  {name: "Robin Williams: Live on Broadway", runtime: 99, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTc1MTQ4NjcyOF5BMl5BanBnXkFtZTcwODIyNzIyMQ@@._V1_.jpg"},
  {name: "Robin Williams: An Evening at the Met", runtime: 65, thumbnail:"https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_.jpg"},
  {name: "Weapons of Self Destruction", runtime: 90, thumbnail:"https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_.jpg"}
])
