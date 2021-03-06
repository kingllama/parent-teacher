
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
  ['Grade 4 Math'],
  ['Grade 4 Science'],
  ['Grade 4 French'],
  ['Grade 4 Music'],
  ['Grade 4 English']
]

don_classes = [
  ['Grade 5 Math'],
  ['Grade 5 Science'],
  ['Grade 5 French'],
  ['Grade 5 Music'],
  ['Grade 5 English']
]

david_parents = [
  ['Michel', 'Armstrong', 'darmstrong@gmail.com', 'F','parents/mom3.jpg', "502-842-6659"],
  ['Horratio', 'Armstrong', 'darmstrong@gmail.com', 'M','parents/dad.jpg', "502-842-6659"],
]
julie_parents = [
  ['Mary', 'Cooke', 'scooke@gmail.com', 'F', 'parents/mom2.jpg', "502-842-6659"],
  ['James', 'Cooke', 'scooke@gmail.com', 'M','parents/dad2.jpg', "502-842-6659"],
]
chloe_parents = [
  ['Derek', 'Hunt', 'shunt@gmail.com', 'M','parents/dad5.jpg', "502-842-6659"],
  ['Sylvia', 'Hunt', 'shunt@gmail.com', 'F','parents/mom4.jpg', "502-842-6659"],
]
andrew_parents = [
  ['Helen', 'Shepard', 'Ashepard@gmail.com', 'F', 'parents/mom5.jpg', "502-842-6659"],
  ['Alexander', 'Shepard', 'Ashepard@gmail.com', 'M', 'parents/dad4.jpg', "502-842-6659"],
]
patrick_parents = [
  ['Thomas', 'Adams', 'Padams@gmail.com', 'M', 'parents/dad3.jpg', "502-842-6659"],
  ['Leslie', 'Adams', 'Padams@gmail.com', 'F', 'parents/mom.jpg', "502-842-6659"],
]
bradley_parents = [
  ['Maura', 'Shelley', 'Bshelley@gmail.com', 'F', 'parents/mom6.jpg', "502-842-6659"],
  ['George', 'Shelley', 'Bshelley@gmail.com', 'M', 'parents/dad3.jpg', "502-842-6659"],
]

first_students = [
  ['David','Armstrong','M','students/boy-gr3.jpeg', 4, 'students/report-card.png'],
  ['Alexander','Adams','M','students/boy-young12.jpg', 4, 'students/report-card.png'],
  ['Brendan','Sadler','M','students/boy-young3.jpg', 4, 'students/report-card.png'],
  ['Marlon','Shelley','M','students/boy-young4.jpg', 4, 'students/report-card.png'],
  ['Daniel','Donaldson','M','students/boy-young5.jpg', 4, 'students/report-card.png'],
  ['Kieran','Oliver','M','students/boy-young8.jpg', 4, 'students/report-card.png'],
  ['Shannon','Oden','F','students/shannon.jpg', 4, 'students/report-card.png'],
  ['Chloe','Hunt','F','students/girl-young4.jpg', 4, 'students/report-card.png'],
  ['Taylor','Dion','F','students/girl-young2.jpg', 4, 'students/report-card.png'],
  ['Julie','Cooke','F','students/girl-older.jpg', 11, 'students/report-card.png'],
  ['Hannah','Omalley','F','students/girl-young10.jpg', 4, 'students/report-card.png'],
  ['Augustus','Duchaump','M','students/boy-young6.jpg', 4, 'students/report-card.png'],
  ['Patrick','Adams','M','students/boy-young13.jpg', 4, 'students/report-card.png'],
  ['Sean','Sadler','M','students/boy-young10.jpg', 4, 'students/report-card.png'],
  ['Bradley','Shelley','M','students/boy-young2.jpg', 4, 'students/report-card.png'],
  ['Andrew','Shepard','M','students/boy-young14.jpg', 4, 'students/report-card.png'],
  ['Chris','Oliver','M','students/boy-young9.jpg', 4, 'students/report-card.png'],
  ['Don','Oden','M','students/boy-young11.jpg', 4, 'students/report-card.png'],
  ['Sylvia','Hunt','F','students/girl-young14.jpg', 4, 'students/report-card.png'],
]
second_students = [
  ['Topaz','Dion','F','students/girl-young10.jpg', 4, 'students/report-card.png'],
  ['Romila','Cooke','F','students/girl-young5.jpg', 4, 'students/report-card.png'],
  ['Zach','Omalley','M','students/boy-young7.jpg', 4, 'students/report-card.png'],  
  ['Phil','Walker','M','students/boy-young2.jpg', 4, 'students/report-card.png'],
  ['Ali','Hall','F','students/boy-young5.jpg', 4, 'students/report-card.png'],
  ['Sheldon','Young','M','students/boy-young9.jpg', 4, 'students/report-card.png'],
  ['Matthew','King','M','students/boy-young6.jpg', 4, 'students/report-card.png'],
  ['Robert','Bennett','M','students/boy-gr3.jpeg', 4, 'students/report-card.png'],
  ['Thomas','Dyakowski','M','students/boy-young7.jpg', 4, 'students/report-card.png'],
  ['Harrison','Mitchell','M','students/boy-young11.jpg', 4, 'students/report-card.png'],
  ['Megan','Baker','F','students/girl-young.jpg', 4, 'students/report-card.png'],
  ['Allison','Wright','F','students/girl-young14.jpg', 4, 'students/report-card.png'],
  ['Margret','Green','F','students/girl-young13.jpg', 4, 'students/report-card.png'],
  ['Elizabeth','Carter','F','students/girl-young12.jpg', 4, 'students/report-card.png']
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
  child = Student.new( firstname: student[0], lastname: student[1], gender: student[2], avatar_file_name: student[3], grade: student[4], evaluation_file_name: student[5])
  child.teachers << Teacher.find_by(firstname: 'Monica')
  child.school = School.find_by(name: 'Mayflower Elementary')
  child.classrooms << Classroom.find(1,2,3,4,5)
  child.save
end

second_students.each do |student|
  child = Student.new( firstname: student[0], lastname: student[1], gender: student[2], avatar_file_name: student[3], grade: student[4], evaluation_file_name: student[5])
  child.teachers << Teacher.find_by(firstname: 'Don')
  child.school = School.find_by(name: 'Mayflower Elementary')
  child.classrooms << Classroom.find(6,7,8,9,10)
  child.save 
end

david_parents.each do |parent|
  dav = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3], avatar_file_name: parent[4], phone: parent[5])
  dav.students << Student.where(lastname: 'Armstrong')
  dav.students << Student.last
  dav.save
end

julie_parents.each do |parent|
  julie = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3], avatar_file_name: parent[4], phone: parent[5])
  julie.students.push(Student.find(26), Student.find(15))
  julie.save
end

chloe_parents.each do |parent|
  chlo = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3], avatar_file_name: parent[4], phone: parent[5])
  chlo.students << Student.where(lastname: 'Hunt') 
  chlo.save
end

andrew_parents.each do |parent|
  andy = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3], avatar_file_name: parent[4], phone: parent[5])
  andy.students << Student.where(lastname: 'Shepard')
  andy.save
end

patrick_parents.each do |parent|
  pat = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3], avatar_file_name: parent[4], phone: parent[5])
  pat.students << Student.where(lastname: 'Adams') 
  pat.save
end

bradley_parents.each do |parent|
  brad = Parent.new(firstname: parent[0], lastname: parent[1], email: parent[2], gender: parent[3], avatar_file_name: parent[4], phone: parent[5])
  brad.students << Student.where(lastname: 'Shelley')
  brad.save
end

# David Armstrong notes
Note.create(posted_by: "Michel", student_id: 6, text: "David has been struggling with his math homework, but we are working hard to help him understand.")
Note.create(posted_by: "Monica", student_id: 6, text: "David has made some really excellent improvement in math! He is a very diligent student.")
Note.create(posted_by: "Michel", student_id: 6, text: "Great idea for the creative book report! David had a lot of fun practicing for his performance.")


# Chloe Hunt notes
Note.create(posted_by: "Derek", student_id: 13, text: "Chloe's goldfish passed away this weekend. Please be sensistive if she is a little sad.")
Note.create(posted_by: "Monica", student_id: 13, text: "Chloe's science project was highly impressive! I have encouraged her to check out advanced summer workshops.")
Note.create(posted_by: "Derek", student_id: 13, text: "Thank you for inspiring Chloe! She has become quite fascinated with chemistry and is showing excellent promise.")

# Andrew Shepard notes
Note.create(posted_by: "Helen", student_id: 21, text: "Andrew loves Music class! He comes home every day so excited to show us what he can play.")
Note.create(posted_by: "Helen", student_id: 21, text: "Have you considered teaching students a quieter or less piercing instrument than the recorder?")
Note.create(posted_by: "Don", student_id: 21, text: "Andrew did very poorly on his reading test today. I have provided him with some supplementary materials, I hope this helps!")

# Romila Cooke notes
Note.create(posted_by: "Don", student_id: 26, text: "Romila has made an excellent start. She finished the entire week's assignemnts in a single day!")
Note.create(posted_by: "Mary", student_id: 26, text: "If Romila finishes her work early, we have encouraged her to study other topics that interest her.")
Note.create(posted_by: "Don", student_id: 26, text: "As you may know, Romila has taken it upon herself to found a student council. Please inform her that this is not a governing body.")

# Julie Cooke notes
julie = Student.find(15)
julie.school = School.find_by(name: 'Yellow Stone Highschool')
julie.save
Note.create(posted_by: "Suzanne", student_id: 15, text: "Julie has continued to impress with her excellent mediation skills at the Model UN.")
Note.create(posted_by: "Mary", student_id: 15, text: "Julie will be away from school from Thursday, November 16th to the following Monday for a leadership conference.")
Note.create(posted_by: "Suzanne", student_id: 15, text: "It was wonderful of Julie to share her conference experience with the school. She is a very bright young woman.")

romila = Student.find(26)
romila.teachers << Teacher.find_by(firstname: 'Monica')
romila.classrooms << Classroom.find(1,2,3,4,5)