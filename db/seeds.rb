# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
puts 'Drop table Category'
Course.destroy_all
puts 'Drop table Course'
Question.destroy_all
puts 'Drop table Question'
Answer.destroy_all
puts 'Drop table Answer'


Category.create!(category_name: "Linux")
Category.create!(category_name: "Security")
Category.create!(category_name: "Web Development")
Category.create!(category_name: "Machine Learning")
Category.create!(category_name: "AWS")
Category.create!(category_name: "Blockchain")
Category.create!(category_name: "Database")
Category.create!(category_name: "DevOps")
puts 'Categories Added'


Course.create!(course_name: "Linux Professional Institute LPIC-1", category_id: Category.first.id, course_desc: "LPIC-1 is the first certification in LPI’s multi-level Linux professional certification program. The LPIC-1 will validate the candidate's ability to perform maintenance tasks on the command line, install and configure a computer running Linux and configure basic networking.")
Course.create!(course_name: "Linux Professional Institute LPIC-2", category_id: Category.first.id, course_desc: "LPIC-2 is the second certification in LPI’s multi-level professional certification program. The LPIC-2 will validate the candidate's ability to administer small to medium–sized mixed networks. The candidate must have an active LPIC-1 certification to receive LPIC-2 certification, but the LPIC-1 and LPIC-2 exams may be taken in any order.")

Course.create!(course_name: "Secure Infrastructure", category_id: Category.second.id, course_desc: "Secure coding is the practice of developing computer software in a way that guards against the accidental introduction of security vulnerabilities. Defects, bugs and logic flaws are consistently the primary cause of commonly exploited software vulnerabilities.")
Course.create!(course_name: "Secure Coding Training", category_id: Category.second.id)

Course.create!(course_name: "HTML for Beginners", category_id: Category.third.id, course_desc: "Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.")
Course.create!(course_name: "Google Analytics Basic", category_id: Category.third.id, course_desc: "Google Analytics is a web analytics service offered by Google that tracks and reports website traffic, currently as a platform inside the Google Marketing Platform brand. Google launched the service in November 2005 after acquiring Urchin.")
Course.create!(course_name: "CSS Basic", category_id: Category.third.id, course_desc: "Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.")
Course.create!(course_name: "Client-side Javascript", category_id: Category.third.id)
Course.create!(course_name: "React.js Essentitals", category_id: Category.third.id, course_desc: "React is a declarative, efficient, and flexible JavaScript library for building user interfaces. It lets you compose complex UIs from small and isolated pieces of code called “components”.")
Course.create!(course_name: "Vue.js Essentitals", category_id: Category.third.id, course_desc: "Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces. Unlike other monolithic frameworks, Vue is designed from the ground up to be incrementally adoptable. The core library is focused on the view layer only, and is easy to pick up and integrate with other libraries or existing projects.")

Course.create!(course_name: "Introduction to Artificial Intelligence", category_id: Category.fourth.id)

Course.create!(course_name: "AWS Certified DevOps Engineer", category_id: Category.fifth.id)
Course.create!(course_name: "AWS Certified Big Data – Specialty", category_id: Category.fifth.id)
Course.create!(course_name: "AWS Certified Security – Specialty", category_id: Category.fifth.id)

Course.create!(course_name: "Blockchain Fundamentals", category_id: Category.all[5].id)
Course.create!(course_name: "Bitcoin Basic", category_id: Category.all[5].id)
Course.create!(course_name: "Bitcoin Basic", category_id: Category.all[5].id)

Course.create!(course_name: "MySQL Database Developer", category_id: Category.all[6].id)

Course.create!(course_name: "Docker Certified Associate", category_id: Category.all[7].id)
Course.create!(course_name: "Kubernetes Administrator", category_id: Category.all[7].id)
puts 'Courses added'


course_id = Course.first.id
(1..200).each do |n|    
    question_name = Faker::Quote.most_interesting_man_in_the_world
    puts question_name
    Question.create!(question_name: question_name, course_id: course_id)
    if (n % 10 == 0)
        course_id = course_id + 1
    end
end

puts 'Questions Added'

arr = []
question_id = Question.first.id
(1..800).each do |n|
    arr.length <= 1 ? arr = [true, false, false, false].shuffle : arr.shift(1)
    is_correct = arr[0] ? '1' : ''
    answer_content = Faker::Quote.singular_siegler + is_correct
    puts answer_content
    Answer.create!(question_id: question_id, answer_content: answer_content, is_correct: arr[0])
    if (n % 4 == 0)
        question_id = question_id + 1
    end
end

puts 'Answers Added'
puts 'Done!'