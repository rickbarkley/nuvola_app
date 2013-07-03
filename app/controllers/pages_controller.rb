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

def admin
@title = "Admin"
end

#classes

def stand
@title = "Stand and Let the Lord Fight Your Battles"
end

def win7
@title = "intro to Windows 7"
end

def tcpip
@title = "Intro to Networking"
end

end
