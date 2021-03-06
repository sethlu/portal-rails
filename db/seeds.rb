def make_user
  user = User.create(
    id: 1,
    email: "student@test.com",
    password: "password",
    staff: false
  )
  user.save
end

def make_lectures
  1.upto(5) do |n|
    lecture = Lecture.create(
      prog_topic: "Prog Lecture #{n}",
      design_topic: "Design Lecture #{n}",
      prog_description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam aliquid ea officia, voluptatum possimus vero veniam optio!",
      design_description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam aliquid ea officia, voluptatum possimus vero veniam optio!",
      week: n,
      date: rand(10.months).seconds.ago,
      semester: "sp0#{n}"
    )
    lecture.id = n
    lecture.save
  end
end

def make_assignments
  1.upto(5) do |n|
    assignment = Assignment.create(
      name: "Assignment #{n}",
      points: "5",
      due_date: rand(10.days).seconds.from_now,
      semester: "sp0#{n}",
      lecture: Lecture.where(week: n).first
    )
    assignment.id = n
    assignment.save
  end
end

make_user
make_lectures
make_assignments
