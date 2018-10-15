require 'pry'

connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

class Dog < ActiveRecord::Base

end

# dog = Dog.new({name: "Fido", breed: "lab"})

# binding.pry
# 0
