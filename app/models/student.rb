class Student
  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student| student.first_name == first_name}
  end

  def test_array
    BoatingTest.all.select {|test| test.student == self }
  end

  def passed_tests_array
    test_array.select {|test| test.test_status == "passed"}
  end

  def grade_ratio
    passed_tests_array.count.to_f/test_array.count
  end

  def grade_percentage
    percentage = grade_ratio*100
    percentage
  end



  end
