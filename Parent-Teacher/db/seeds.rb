
schools=[
  ['Mayflower Elementary', '2665 West 18th Ave, Vancouver, BC', 'Mayflowerelementary@gmail.com'],
  ['Green Park Elementary', '4832 Alder Drive, Vancouver, BC', 'Greenpark@gmail.com'],
  ['Yellow Stone Highschool', '1945 West 29th Ave', 'Yellowstone@gmail.com']
]

teachers = [
  ['Donna','Gordon','Dgordon@gmail.com', 'F', 'teachers/teacher-female2.jpg'],
  ['Don','Borks','Dborks@gmail.com', 'M', 'teachers/teacher-male2.jpg'],
  ['Monica','Ballinescu','Mballinescu@gmail.com', 'F', 'teachers/teacher-female.jpg'],
  ['Suzanne','Morgan','Smorgan@gmail.com', 'F', 'teachers/teacher-female3.jpg'],
  ['Freddrick','Summers','Fsummers@gmail.com', 'M', 'teachers/teacher-male.jpg']
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
  ['David','Armstrong','M','students/boy-gr3.jpeg', 4],
  ['Alexander','Adams','M','students/boy-young12.jpg', 4],
  ['Brendan','Sadler','M','students/boy-young3.jpg', 4],
  ['Marlon','Shelley','M','students/boy-young4.jpg', 4],
  ['Daniel','Donaldson''M','students/boy-young5.jpg', 4],
  ['Kieran','Oliver','M','students/boy-young8.jpg', 4],
  ['Shannon','Oden','F','students/shannon.jpg', 4],
  ['Chloe','Hunt','F','students/girl-young4.jpg', 4],
  ['Taylor','Dion','F','students/girl-young2.jpg', 4],
  ['Julie','Cooke','F','students/girl-older.jpg', 11],
  ['Hannah','Omalley','F','students/girl-young10.jpg', 4],
  ['Augustus','Duchaump','M','students/boy-young6.jpg', 4],
  ['Patrick','Adams','M','students/boy-young13.jpg', 4],
  ['Sean','Sadler','M','students/boy-young10.jpg', 4],
  ['Bradley','Shelley','M','students/boy-young2.jpg', 4],
  ['Andrew','Shepard','M','students/boy-young14.jpg', 4],
  ['Chris','Oliver','M','students/boy-young9.jpg', 4],
  ['Don','Oden''M','students/boy-young11.jpg', 4],
  ['Sylvia','Hunt','F','students/boy-young8.jpg', 4],
]
second_students = [
  ['Topaz','Dion','F','students/girl-young10.jpg', 4],
  ['Romila','Cooke','F','students/girl-young5.jpg', 4],
  ['Zach','Omalley','M','students/boy-young7.jpg', 4],  
  ['Phil','Walker','M','students/boy-young2.jpg', 4],
  ['Ali','Hall','F','students/boy-young5.jpg', 4],
  ['Sheldon','Young','M','students/boy-young9.jpg', 4],
  ['Matthew','King','M','students/boy-young6.jpg', 4],
  ['Robert','Bennett','M','students/boy-gr3.jpeg', 4],
  ['Thomas','Dyakowski','M','students/boy-young7.jpg', 4],
  ['Harrison','Mitchell','M','students/boy-young11.jpg', 4],
  ['Megan','Baker','F','students/girl-young.jpg', 4],
  ['Allison','Wright','F','students/girl-young14.jpg', 4],
  ['Margret','Green','F','students/girl-young13.jpg', 4],
  ['Elizabeth','Carter','F','students/girl-young12.jpg', 4]
]


schools.each do |school|
  School.create( name: school[0], address: school[1], email: school[2])
end


teachers.each do |teacher|
  teach = Teacher.new( firstname: teacher[0], lastname: teacher[1], email: teacher[2], gender: teacher[3], avatar_file_name: teacher[4])
  teach.school = School.find_by(name: "Mayflower Elementary")
  teach.save
end

monica_classes.each do |c|
  cl = Classroom.new(subject: c[0])
  cl.school = School.find_by(name: "Mayflower Elementary")
  cl.teacher = Teacher.find_by(firstname: 'Monica')
  cl.save
end

don_classes.each do |c|
  cl = Classroom.new(subject: c[0])
  cl.school = School.find_by(name: "Mayflower Elementary")
  cl.teacher = Teacher.find_by(firstname: 'Don')
  cl.save
end

first_students.each do |student|
  child = Student.new( firstname: student[0], lastname: student[1], gender: student[2], avatar_file_name: student[3], grade: student[4])
  child.teachers << Teacher.find_by(firstname: 'Monica')
  child.school = School.find_by(name: 'Mayflower Elementary')
  child.classrooms << Classroom.find(1,2,3,4,5)
  child.save
end

second_students.each do |student|
  child = Student.new( firstname: student[0], lastname: student[1], gender: student[2], avatar_file_name: student[3], grade: student[4])
  child.teachers << Teacher.find_by(firstname: 'Don')
  child.school = School.find_by(name: 'Mayflower Elementary')
  child.classrooms << Classroom.find(6,7,8,9,10)
  child.save 
end

david_parents.each do |parent|
  dav = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  dav.students << Student.where(lastname: 'Armstrong')
  dav.students << Student.last
  dav.save
end

shannon_parents.each do |parent|
  shan = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  shan.students << Student.where(lastname: 'Oden') 
  shan.save
end

chloe_parents.each do |parent|
  chlo = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  chlo.students << Student.where(lastname: 'Hunt') 
  chlo.save
end

andrew_parents.each do |parent|
  andy = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  andy.students << Student.where(lastname: 'Shepard')
  andy.save
end

patrick_parents.each do |parent|
  pat = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  pat.students << Student.where(lastname: 'Adams') 
  pat.save
end

bradley_parents.each do |parent|
  brad = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3])
  brad.students << Student.where(lastname: 'Shelley')
  brad.save
end


## Add some notes for students too
## events are probably easier to add in-system