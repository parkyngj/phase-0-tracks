# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# A /contact route that displays an address (you can make up the address).

get '/contact' do
  "1337 Fake St.<br>Fakely, Fakeroni 12345<br>USA"
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  if params[:name]
    "Good jorb, #{params[:name]}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?

get '/adder/:num1/plus/:num2' do
  "#{params[:num1].to_i} + #{params[:num2].to_i} = #{params[:num1].to_i + params[:num2].to_i}"
end

# R0 #4. Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.

get '/students/firstnamestartswith/:ltr' do
  students = db.execute("SELECT * FROM students")
  selected_students = ""
  students.each_with_index do |student, idx|
    if student['name'][0] == params[:ltr]
      selected_students << "#{student['name']}<br>"
    end
  end
  selected_students
end