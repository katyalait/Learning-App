class PagesController < ApplicationController

  def index
    current_user
  end
  
  def header
  end

  def myAppUsage
    current_user
  end
  
  def myLearning
  end
  
  def myLearningTwo
  end

  def myGoals
  end
  
  def weeklyOverview
  end

  def myLocationsThree
  end

  def myLocationsTwo
    @dats = params
  end 

  def myLocations
    current_user
    @userdevice = Device.find_by(_id: @current_user.aware_device_id).device_id
  end

  def top_nav
  end

  def side_nav
  end

  def singleAppusage
  end
end
