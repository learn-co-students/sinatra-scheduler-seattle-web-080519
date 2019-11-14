require "pry"
Course.destroy_all

courses = [
  {
    name: 'Transfiguration',
    professor: 'McGonagall',
    credits: 3
  }, {
    name: 'Charms',
    professor: 'Flitwick',
    credits: 2
  }, {
    name: 'Potions',
    professor: 'Snape',
    credits: 4
  }, {
    name: 'History of Magic',
    professor: 'Binns',
    credits: 2
  }, {
    name: 'Defence Against the Dark Arts',
    professor: 'Lupin',
    credits: 4
  }, {
    name: 'Astronomy',
    professor: 'Sinistra',
    credits: 2
  }, {
    name: 'Herbology',
    professor: 'Sprout',
    credits: 2
  }, {
    name: 'Flying',
    professor: 'Hooch',
    credits: 1
  }, {
    name: 'Arithmancy',
    professor: 'Vector',
    credits: 4
  }, {
    name: 'Muggle Studies',
    professor: 'Burbage',
    credits: 2
  }, {
    name: 'Divination',
    professor: 'Trelawney',
    credits: 2
  }, {
    name: 'Study of Ancient Runes',
    professor: 'Babbling',
    credits: 3
  }, {
    name: 'Care of Magical Creatures',
    professor: 'Hagrid',
    credits: 2
  }, {
    name: 'Frog Choir',
    professor: 'Flitwick',
    credits: 1
  }
]

# def create_courses(courses)
#   courses.each do |course|
#     Course.create([{name: "#{course[:name]}", professor: "#{course[:professor]}", credits: "#{course[:credits]}"}])
#   end
# end

# create_courses(courses)

courses.each {|course| Course.create(course)}

puts "Seeds done!"
