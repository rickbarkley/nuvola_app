class PagesController < ApplicationController
  def home
  @title = "Home"
  end

  def contact
  @title = "Contact"
  end

  def about
  @title = "About"
  end


def communities
@title = "Communities"
end

def trending
@title = "Trending"
    if signed_in?
    @micropost = Micropost.new
    @feed_items = current_user.feed.paginate(:page => params[:page])
end
    end

def admin
@title = "Admin"
end



end
