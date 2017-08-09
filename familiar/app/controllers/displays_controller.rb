class DisplaysController < ApplicationController
  def index
    render text: 'Rails is super cool!'
  end

  def hello
    render text: 'Hello Ninjas!'
  end

  def say
    unless params[:name]
      render text: "UNAUTHORIZED"
    else
      if params[:name] == 'matt'
        redirect_to '/say/hello/caleb'
      else
        render text: "HELLO!!! #{params[:name]}"
      end
    end
  end

  def times
    session[:count] ||= 0
    render text: "You visited #{session[:count]+=1} times!!!1"
  end

  def restart
    reset_session
    render text: 'SESSION DESTROYED'
  end
end
