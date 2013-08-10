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
    @micropost = Micropost.new
end

def admin
@title = "Admin"
end



end
