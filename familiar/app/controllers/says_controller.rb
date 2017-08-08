class SaysController < ApplicationController
  def index
    render :text => "Say what?"
  end

  def hello
    render :text => "Say HELLO!"
  end

  #def hello/:id
  #end
end
