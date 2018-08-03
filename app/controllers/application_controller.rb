require './config/environment'
require './app/models/sample_model'
require './app/models/bulletjournal'
require './app/models/tracker'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/bulletjournal' do 
    return erb :bulletjournal
  end
  
  get '/tracker' do 
    return erb :tracker
  end
  
  post '/exercise' do 
    return erb :exercise
  end
  
  post '/allergy' do 
    return erb :Helpergy
  end
  
  post '/sleep' do
    return erb :sleep
  end
  
  post '/water' do 
    return erb :water
  end
  
  post '/supplies' do
    @letter = params[:lettering]
    @journal = params[:journal]
    @productivity = params[:productivity]
    
    @lettering_choice = lettering_style(@letter, 1)
    @journal_choice = journal_type(@journal, 1)
    @productivity_choice = productivity_level(@productivity) 
    
    @lettering_name = lettering_style(@letter, 0)
    @journal_name = journal_type(@journal, 0)
    
    return erb :supplies
  end
  
  post '/exercisehelp' do
    @exercise = params[:exercise]
  
    @exercise_choice = your_exercise(@exercise)
  
    return erb :excercisehelp
  end

  post '/helpergyremedies' do
    @symptom = params[:symptom]
    # @symptom = params[:tablets2
    # # @remedy = params[:remedy]
    # # @remedy2 = params[:remedy2]
    
    @otc2_link = your_symptoms(@symptom, 3)
    @remedy_link = your_symptoms(@symptom, 5)
    @remedy2_link = your_symptoms(@symptom, 7)
    @otc_link = your_symptoms(@symptom, 1) 
    
    @otc_product = your_symptoms(@symptom, 0)
    @otc2_product = your_symptoms(@symptom, 2)
    @remedy_product = your_symptoms(@symptom, 4)
    @remedy2_product = your_symptoms(@symptom, 6)
    
    @otc_img = your_symptoms(@symptom, 8)
    @otc2_img = your_symptoms(@symptom, 9)
    @remedy_img = your_symptoms(@symptom, 10)
    @remedy2_img = your_symptoms(@symptom, 11)
  
    return erb :otcremedies
    
  end
  
  post '/sleepamount' do
    @sleep_units = params[:units]
    @sleep_age = params[:age].to_i
    @sleep_amount = sleep_amount(@sleep_age, @sleep_units)
    return erb :sleepamount
  end
  
  post '/wateramount' do
    @weightInLBS = params[:weight].to_f
    @minAndMax = water_amount(@weightInLBS)
    return erb :waterHelp
  end
  
end