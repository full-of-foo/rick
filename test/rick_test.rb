require 'test_helper'


class RickTest < Minitest::Test
  def test_version_number
    assert_equal Rick::VERSION, "0.1.1"
  end

  def test_roll_url
    assert_equal Rick::Roll::URL, "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
  end
end
