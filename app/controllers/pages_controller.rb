class PagesController < ApplicationController

  def index
    @universities = University.all
  end

  def admin_courses
    @courses = Course.where(:state => "pending")

    @courses.each do |course|
      course.add_attrs(faculty: Faculty.find(course.faculty_id).name)
      course.add_attrs(university: University.find(course.university_id).name)
    end
    render :layout => false
  end

  def admin_teachers
    @teachers = Teacher.where(:state => "pending")

    @teachers.each do |teacher|
      teacher.add_attrs(faculty: Faculty.find(teacher.faculty_id).name)
      teacher.add_attrs(university: University.find(teacher.university_id).name)
    end

    render :layout => false
  end

end
