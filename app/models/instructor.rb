class Instructor
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
  end

  def pass_student(student_name, test_name)
     if BoatingTest.all.find {|test| test.student.first_name  == student_name && test.test_name == test_name }.test_status = "passed"
    else
      BoatingTest.new(student_name, test_name, "passed", self)
    end
  end

    def fail_student(student_name, test_name)
       if BoatingTest.all.find {|test| test.student.first_name  == student_name && test.test_name == test_name }.test_status = "failed"
      else
        BoatingTest.new(student_name, test_name, "failed", self)
      end
    end

end
