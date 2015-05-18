require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
<<<<<<< HEAD
      post :create, course: {  }
=======
      post :create, course: { eval_amount: @course.eval_amount, eval_sum: @course.eval_sum, name: @course.name }
>>>>>>> upstream/develop
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
<<<<<<< HEAD
    patch :update, id: @course, course: {  }
=======
    patch :update, id: @course, course: { eval_amount: @course.eval_amount, eval_sum: @course.eval_sum, name: @course.name }
>>>>>>> upstream/develop
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
