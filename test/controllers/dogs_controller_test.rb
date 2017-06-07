require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { breed_id: @dog.breed_id, date_of_birth: @dog.date_of_birth, genre: @dog.genre, last_time: @dog.last_time, name: @dog.name, owner_id: @dog.owner_id, registered: @dog.registered } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { breed_id: @dog.breed_id, date_of_birth: @dog.date_of_birth, genre: @dog.genre, last_time: @dog.last_time, name: @dog.name, owner_id: @dog.owner_id, registered: @dog.registered } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
