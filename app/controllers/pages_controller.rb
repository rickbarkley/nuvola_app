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

  def classes
  @title = "Classes"
  end

def communities
@title = "Communities"
end

def trending
@title = "Trending"
end
end
