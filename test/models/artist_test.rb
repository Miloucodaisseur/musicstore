require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "should save new artist" do
  artist = Artist.new( first_name: "Robbie", last_name: "Williams", country: "UK")
  assert artist.save
  end

  test "should save empty" do
    artist = Artist.new()
    assert artist.save
  end

  test "silly test should pass" do
    assert_not false
  end
end
