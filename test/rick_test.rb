require 'test_helper'

class RickTest < Minitest::Test
  def test_version_number
    assert Rick::VERSION, "0.1.0"
  end
end
