require "pry"

class CommandLineInterface

    def greet
        puts "Hi! Welcome to MovieTrip. We'll help you find the filming locations of your favorite movie scenes!"
    end

    def gets_user_input
        puts "To start, please type which city you'd like to visit:
        *New York
        *Los Angeles
        *Chicago
        *Rome"
        gets.chomp
    end

    def find_city(city_name)
        city = Movie.where(city: city_name)
        city.map {|movie| puts movie.title}
    end

    def run
        greet
        sleep(3)
        input = gets_user_input
        puts "~~~~~~~~~~~~~~~~"
        sleep(2)
        puts "Here are the movies filmed in #{input}!"
        find_city(input) 

    end

    # def get_city
    #     puts "To get started, type in one of the cities below:
    #     *New York
    #     *Los Angeles
    #     *Rome
    #     *Chicago"
    #     city = gets.chomp
    #     puts "#{city} is awesome!  "
    # end


end