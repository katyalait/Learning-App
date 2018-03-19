class PagesController < ActionController
  def index
	render :action => "header"
	render :action => "top-nav"
	render :action => "side-nav"
	render :action => "index"
  end

  def top-nav
  end

  def side-nav
  end
  
  def header
  end

  def myAppUsage
  end
  
  def myLearning
  end
  
  def myLocations
  end
end
