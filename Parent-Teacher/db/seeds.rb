
schools=[
  ['Mayflower Elementary', '2665 West 18th Ave, Vancouver, BC', 'Mayflowerelementary@gmail.com'],
  ['Green Park Elementary', '4832 Alder Drive, Vancouver, BC', 'Greenpark@gmail.com'],
  ['Yellow Stone Highschool', '1945 West 29th Ave', 'Yellowstone@gmail.com']
]

teachers = [
  ['Donna','Gordon','Dgordon@gmail.com', 'F'],
  ['Don','Borks','Dborks@gmail.com', 'M'],
  ['Monica','Ballinescu','Mballinescu@gmail.com', 'F'],
  ['Suzanne','Morgan','Smorgan@gmail.com', 'F'],
  ['Freddrick','Summers','Fsummers@gmail.com', 'M']
]

monica_classes = [
  ['Math'],
  ['Science'],
  ['French'],
  ['Music'],
  ['English']
]

don_classes = [
  ['Math'],
  ['Science'],
  ['French'],
  ['Music'],
  ['English']
]

david_parents = [
  ['Michel', 'Armstrong', 'darmstrong@gmail.com', 'F'],
  ['Horratio', 'Armstrong', 'darmstrong@gmail.com', 'M'],
]
shannon_parents = [
  ['Mary', 'Oden', 'soden@gmail.com', 'F'],
  ['James', 'Oden', 'soden@gmail.com', 'M'],
]
chloe_parents = [
  ['Sylvia', 'Hunt', 'shunt@gmail.com', 'F'],
  ['Derek', 'Hunt', 'shunt@gmail.com', 'M'],
]
andrew_parents = [
  ['Helen', 'Shepard', 'Ashepard@gmail.com', 'F'],
  ['Alexander', 'Shepard', 'Ashepard@gmail.com', 'M'],
]
patrick_parents = [
  ['Leslie', 'Adams', 'Padams@gmail.com', 'F'],
  ['Thomas', 'Adams', 'Padams@gmail.com', 'M'],
]
bradley_parents = [
  ['Maura', 'Shelley', 'Bshelley@gmail.com', 'F'],
  ['George', 'Shelley', 'Bshelley@gmail.com', 'M'],
]

first_students = [
  ['David','Armstrong','M'],
  ['Alexander','Adams','M'],
  ['Brendan','Sadler','M'],
  ['Marlon','Shelley','M'],
  ['Daniel','Donaldson''M'],
  ['Kieran','Oliver','M'],
  ['Shannon','Oden','F'],
  ['Chloe','Hunt','F'],
  ['Taylor','Dion','F'],
  ['Julie','Cooke','F'],
  ['Hannah','Omalley','F'],
  ['Augustus','Duchaump','M'],
  ['Patrick','Adams','M'],
  ['Sean','Sadler','M'],
  ['Bradley','Shelley','M'],
  ['Andrew','Shepard','M'],
  ['Chris','Oliver','M'],
  ['Don','Oden''M'],
  ['Sylvia','Hunt','F'],
]
second_students = [
  ['Topaz','Dion','F'],
  ['Romila','Cooke','F'],
  ['Zach','Omalley','M'],  
  ['Phil','Walker','M'],
  ['Ali','Hall','F'],
  ['Sheldon','Young','M'],
  ['Matthew','King','M'],
  ['Robert','Bennett','M'],
  ['Thomas','Dyakowski','M'],
  ['Harrison','Mitchell','M'],
  ['Megan','Baker','F'],
  ['Allison','Wright','F'],
  ['Margret','Green','F'],
  ['Elizabeth','Carter','F']
]


schools.each do |school|
  School.create( name: school[0], address: school[1], email: school[2])
end


teachers.each do |teacher|
  teach = Teacher.new( firstname: teacher[0], lastname: teacher[1], email: teacher[2], gender: teacher[3])
  teach.school = School.find(1)
  teach.save
end

monica_classes.each do |c|
  cl = Classroom.new(subject: c[0])
  cl.school = School.find(1)
  cl.teacher = Teacher.find(3)
  cl.save
end

don_classes.each do |c|
  cl = Classroom.new(subject: c[0])
  cl.school = School.find(1)
  cl.teacher = Teacher.find(2)
  cl.save
end

first_students.each do |student|
  child = Student.new( firstname: student[0], lastname: student[1], gender: student[2])
  child.teachers << Teacher.find_by(firstname: 'Monica')
  child.school = School.find_by(name: 'Mayflower Elementary')
  child.classrooms << Classroom.find(1,2,3,4,5)
  child.save
end

second_students.each do |student|
  child = Student.new( firstname: student[0], lastname: student[1], gender: student[2])
  child.teachers << Teacher.find_by(firstname: 'Don')
  child.school = School.find_by(name: 'Mayflower Elementary')
  child.classrooms << Classroom.find(6,7,8,9,10)
  child.save 
end

david_parents.each do |parent|
  dav = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  dav.students << Student.find_by(lastname: 'Armstrong')
  dav.students << Student.last
  dav.save
end

shannon_parents.each do |parent|
  shan = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  shan.students << Student.find_by(lastname: 'Oden') 
  shan.save
end

chloe_parents.each do |parent|
  chlo = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  chlo.students << Student.find_by(lastname: 'Hunt') 
  chlo.save
end

andrew_parents.each do |parent|
  andy = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  andy.students << Student.find_by(lastname: 'Shepard')
  andy.save
end

patrick_parents.each do |parent|
  pat = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  pat.students << Student.find_by(lastname: 'Adams') 
  pat.save
end

bradley_parents.each do |parent|
  brad = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  brad.students << Student.find_by(lastname: 'Shelley')
  brad.save
end
