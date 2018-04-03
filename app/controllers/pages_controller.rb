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
    if params[:learning_goal] != nil
      @textinfo = "Received submission"
      @testsubj = params[:learning_goal][:topic]
      @testdesc = params[:learning_goal][:description]
      @testdate = params[:learning_goal][:date]
      @testapps = (params[:learning_goal][:apps] - [""]).join(",")
    else
      @textinfo = "no submission"
    end
    render 'myGoals'
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
    @locts = LocationReport.where(device_id: @userdevice).last(5)
  end

  def top_nav
  end

  def side_nav
  end

  def singleAppusage
  end
end
