require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  



get "/" do

@dice1 = rand(1..6)
@dice2 = rand(1..6)

view "dice"

    #"Hello"
#"Hello - Welcome to the Game of Craps! 
#<p> <h1> #{dice1} </h1> </p>
#<p> <h1> #{dice2} </h1> </p>
#<p> Total = #{total}</p>"

end