class QuestionsController < ApplicationController


  def ask
  end

  def answer
    @userinput = params[:question]
    if @userinput.downcase == "i am going to work"
      @answer = 'great'
    elsif @userinput.downcase == "what time is it?"
      @answer = Time.now.strftime("It's %R, it's a %A, the %d of %B %y")
    elsif @userinput.end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
