# Prueba - Introducción a la programación con Ruby
=begin
class Person 
    def initialize(first, last, age, type) 
        @first_name = first 
        @last_name = last 
        @age = age 
        @type = type 
    end 
    def birthday 
        @age +=1 
    end 

    def talk 
        if @type == "Student" 
            puts"Aquí es la clase de programación con Ruby?"
         elsif @type =="Teacher" 
            puts"Bienvenidos a la clase de programacióncon Ruby!"
         elsif @type =="Parent" 
            puts"Aquí es la reunión de apoderados?" 
        end 
    end

    def introduce 
        if @type == "Student" 
            puts"Hola profesor. Mi nombre es#{@first_name}#{@last_name}." 
        elsif @type == "Teacher" 
            puts"Hola alumnos. Mi nombre es#{@first_name}#{@last_name}." 
        elsif @type == "Parent" 
            puts"Hola. Soy uno de los apoderados. Mi nombrees#{@first_name} #{@last_name}." 
        end 
    end 
end
=end

#Refactorizado
class Person
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def birthday
    @age += 1
  end
  
  def full_name
    "#{@first_name} #{@last_name}"
  end
  
  def introduce
    " Mi nombre es #{full_name}."
  end

end

class Student < Person
  def talk
    "Aquí es la clase de programación con Ruby?"
  end

  def introduce
    "Hola profesor." + super
  end
end

class Teacher < Person
  def talk
    "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    "Hola alumnos." +  super
  end
end

class Parent < Person
  def talk
    "Aquí es la reunión de apoderados?"
  end

  def introduce
    "Hola. Soy uno de los apoderados." + super
  end
end

student = Student.new("Juan", "Pérez", 20)
teacher = Teacher.new("Ana", "García", 35)
parent = Parent.new("María", "López", 45)

puts "****** Refactorización *******"
puts ''

puts student.introduce
puts student.talk
puts ''

puts teacher.introduce
puts teacher.talk
puts ''

puts parent.introduce
puts parent.talk
puts ''
