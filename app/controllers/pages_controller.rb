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
    current_user
    @userdevice = Device.find_by(_id: @current_user.aware_device_id).device_id
    @goals = LearningGoal.where(user_id: @userdevice)

    @topiclist = Array.new(Topic.count) {}
    index = 0;
    Topic.all.each do |topic| 
      @topiclist[index] = Array[topic.topic_name, topic.ID]
      index += 1
    end
    @applist = Array.new(App.count) {}
    index = 0;
    App.all.each do |app|
      @applist[index] = Array[app.application_name, app.application_name]
      index += 1
    end

    if params[:learning_goal] != nil
      entry_new = LearningGoal.new
      entry_new.user_id = Device.find_by(_id: @current_user.aware_device_id).device_id
      entry_new.topic_id = params[:learning_goal][:topic].to_i
      entry_new.goal = params[:learning_goal][:description]
      entry_new.start_date = Time.now.to_i * 1000
      entry_new.end_date = Date.strptime(params[:learning_goal][:date],"%d/%m/%y").to_time.to_i * 1000
      entry_new.completed = false
      entry_new.apps = (params[:learning_goal][:apps] - [""]).join(",")
      entry_new.save
    else
    end
    render 'myGoals'
  end
  
  def weeklyOverview
  end

  def myLocationsThree
    current_user
    @userdevice = Device.find_by(_id: @current_user.aware_device_id).device_id
    @test = ""
    if session[:locations] != nil && session[:effectiveness] != nil
      session[:locations].each do |loc|
        location = LocationReport.find(loc[0].to_i)
        entrytime = Time.at(location.timestamp.to_i / 1000)
        arrived = Time.parse(loc[1]["arrived"])
        departed = Time.parse(loc[1]["departed"])
        fromtime = Time.new(entrytime.year, entrytime.month, entrytime.day, arrived.hour, arrived.min)
        totime = Time.new(entrytime.year, entrytime.month, entrytime.day, departed.hour, departed.min)
        UsageReport.where(device_id: @userdevice).where(timestamp: (fromtime.to_i * 1000)..(totime.to_i * 1000)).each do |apprep|
          new_context = Context.new
          new_context.user_id = @userdevice
          #new_context.topic_id
          new_context.start_time = fromtime.to_i * 1000
          new_context.end_time = totime.to_i * 1000
          new_context.latitude = location.double_latitude
          new_context.longitude = location.double_longitude
          new_context.app_id = App.find_by(package_name: apprep.package_name).ID
          #new_context.topics
          new_context.percentage = session[:effectiveness][loc[0]]["effect"]
          new_context.description = loc[1]["description"]
          new_context.duration = (totime.to_i * 1000) - (fromtime.to_i * 1000)
          new_context.save
        end
        UsedLocation.create(ID: loc[0].to_i)
      end
      session[:locations] = nil
      session[:effectiveness] = nil
    end
    render 'myLocationsThree'
  end

  def myLocationsTwo
    current_user
    if session[:locations] != nil
      @given = session[:locations]
    end
    if params[:effect] != nil
      session[:effectiveness] = nil
      session[:effectiveness] = params[:effect]
      redirect_to pages_myLocationsThree_url
    end
  end 

  def myLocations
    current_user
    @userdevice = Device.find_by(_id: @current_user.aware_device_id).device_id
    @locts = LocationReport.where(device_id: @userdevice).where.not(ID: UsedLocation.select(:ID)).last(5)
    if params[:context_loc] != nil
      session[:locations] = nil
      session[:locations] = params[:context_loc]
      redirect_to pages_myLocationsTwo_url
    else
    end
  end

  def top_nav
  end

  def side_nav
  end

  def singleAppusage
  end
end
