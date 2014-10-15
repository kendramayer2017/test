class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def process_name
    @apple = params["name"]
    if @apple == "Arjun"
      @message = "Hey"
    else
      @message = "Hello"
    end
  end
    def process_city
     if @city = params["city"] == "chicago"
       @message = "awesome"
     else
       @message = "...bummer"
     end
  end
end
