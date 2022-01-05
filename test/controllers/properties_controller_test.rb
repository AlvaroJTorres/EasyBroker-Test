require 'test_helper'

class PropertyControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get properties_path
    assert_response :success
  end

  test 'should get a property' do
    get property_path('EB-B5535')
    assert_select '.title', 'Casa en Venta en Colinas de San Jerónimo Monterrey'
  end
end
