require 'test_helper'
require 'launchy'


class RickTest < Minitest::Test
  def test_version_number
    assert_equal Rick::VERSION, "0.1.1"
  end

  def test_roll_url
    assert_equal Rick::Roll::URL, "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
  end


  def test_troll_called
    assert_output('', /Oops/) do
      Launchy.stub :open, true do
        assert(Rick::Roll.troll)
      end
    end
  end
end
