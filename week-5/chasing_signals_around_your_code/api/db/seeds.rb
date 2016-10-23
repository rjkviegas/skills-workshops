task_descriptions = [
  "Do the thing",
  "Make breakfast",
  "Solve the problem!",
  "Pay taxes :(",
  "Graduate Makers Academy",
  "Get a great job!"
]

10.times do |i|
  Task.create(title: "Task ##{i + 1}", description: task_descriptions.sample)
end