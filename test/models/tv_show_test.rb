require "test_helper"

class TvShowTest < ActiveSupport::TestCase
  test 'valid tv_show' do
    tv_show = TvShow.new(
        name:'Game of Thrones',
        summary:'Years after a rebellion spurred by a stolen bride to be and the blind ambitions of a mad King',
        release_date: '2011-04-17',
        rating: 7.8)
    assert tv_show.valid?
  end

  test 'invalid without name' do
      tv_show = TvShow.new(
          name: nil,
          summary:'Years after a rebellion spurred by a stolen bride to be and the blind ambitions of a mad King',
          release_date: '2011-04-17',
          rating: 7.8)
      assert_not tv_show.valid?
  end

  test 'invalid without summary' do
      tv_show = TvShow.new(
          name: 'Game of Thrones',
          summary: nil,
          release_date: '2011-04-17',
          rating: 7.8)
      assert_not tv_show.valid?
  end

  test 'invalid without release_date' do
      tv_show = TvShow.new(
          name:'Game of Thrones',
          summary:'Years after a rebellion spurred by a stolen bride to be and the blind ambitions of a mad King',
          release_date: nil,
          rating: 7.8)
      assert_not tv_show.valid?
  end

  test 'invalid without rating' do
      tv_show = TvShow.new(
          name:'Game of Thrones',
          summary:'Years after a rebellion spurred by a stolen bride to be and the blind ambitions of a mad King',
          release_date: '2011-04-17',
          rating: nil)
      assert_not tv_show.valid?
  end
end
