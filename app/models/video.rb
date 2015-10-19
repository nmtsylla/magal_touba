class Video < ActiveRecord::Base
  acts_as_commentable

  attr_accessor :comment

  def self.yt_session
    @yt_session ||= YouTubeIt::Client.new(:username => '18safar1313h', :password => 'mouRide1touba#', :dev_key => 'AIzaSyCg9GJiL5JmDO-BHSTRPH9_7yS7CetbYnY')
    @yt_session.videos_by(:user => '18safar1313h')
  end

  def self.video_options(params)
    opts = {:title => params[:title],
            :description => params[:description],
            :category => "People",
            :keywords => ["test"]}
    params[:is_unpublished] == "1" ? opts.merge(:private => "true") : opts
  end
end