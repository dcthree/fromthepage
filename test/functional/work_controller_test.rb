require File.dirname(__FILE__) + '/../test_helper'
require 'work_controller'

# Re-raise errors caught by the controller.
class WorkController; def rescue_action(e) raise e end; end

class WorkControllerTest < ActionController::TestCase
  def setup
    @controller = WorkController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
