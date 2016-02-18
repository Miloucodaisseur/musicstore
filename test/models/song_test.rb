require 'test_helper'

  class SongTest < ActiveSupport::TestCase
    test "should save new song" do
      song = Song.new(   title: "Millennium", genre: "Pop",duration: 220, artist_id: 1)
      assert song.save
    end

    test "new song should belong be referenced in artist" do
      song = Song.new(title: "foo", genre: "bar", duration: 1)
      song.save
    end
end
