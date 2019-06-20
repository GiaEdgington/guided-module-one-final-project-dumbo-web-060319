require "pry"



    def tty_home
      TTY::Prompt.new.select("Welcome to MovieTour!") do |menu|
      menu.choice "Login" => -> do tty_login end
      menu.choice "Create Account" => -> do tty_create_account end
      menu.choice "Close"=> -> do abort("Goodbye!") end
     end
    end

    def tty_login
        system "clear"
        $username = TTY::Prompt.new.ask("Welcome back! Enter your name.")
        
        if User.find_by(name: $username) == nil
            puts "Sorry, we couldn't find your name. Make an account! "
            tty_create_account  
        else
            $user = User.find_by(name: $username)
            tty_main_menu($user)
        end
    end


    def tty_main_menu(user) 
         TTY::Prompt.new.select("Main Menu") do |menu|
            menu.choice "View Itineraries" => -> do tty_view_itineraries($user) end
            menu.choice "Create Itinerary" => -> do tty_itinerary(user) end
        end
    end

    def tty_create_account
        system "clear"
        $username = TTY::Prompt.new.ask("To create an account, enter your name below. Then login with your new account.")
        $user = User.create(name: $username)
        tty_home
        tty_itinerary(user)
       
    end


   def tty_itinerary(user)
     $itinerary = TTY::Prompt.new.ask("Please enter a name for your new itinerary")
     $itinerary_name = Itinerary.create(user_id: $user.id, itinerary_name: $itinerary)
     tty_choose_city
     
   end

   def tty_choose_city
    system "clear"
   
     $city_name = TTY::Prompt.new.ask("What city would you like to visit?")
     $city = Location.list_movies_for_city("#{$city_name}")
     system 'say "gracie is the best"'
     tty_choose_movie($city)
   end

  def tty_choose_movie(city)
     TTY::Prompt.new.select( "Here are the movies filmed in #{$city_name}:") do |menu|
     $city.each do |movie|
        menu.choice "#{movie}" => -> do tty_movie_scenes(movie) end
     end
    #  tty_movie_scenes(movie)
     end
  end

  def find_scene_descriptions(user)
    Itinerary.all.select do |itinerary|
        if itinerary.user_id == user.id
            return itinerary.movie_scenes
        end
    end

  end

    def tty_view_itineraries(user)
      TTY::Prompt.new.select("Here are your itineraries:") do |menu|
        user.itineraries.each do |itinerary|
        menu.choice "#{itinerary.itinerary_name}: \n #{itinerary.movie_scenes.map {|moviescene| moviescene.scene_description }}" => -> do 
         tty_view_addresses(user,itinerary) 
            end 
        end
      end

    end

    def tty_view_addresses(user, itinerary)
        user.itineraries.each do |itinerary|
            $locations_array = itinerary.movie_scenes.map { |moviescene| moviescene.location}
        end
        locations = $locations_array.map {|location| location.location_address}
        puts locations 
        TTY::Prompt.new.select("Do you want to delete this itinerary?") do |menu|
            menu.choice "Yes" => -> do tty_delete_itinerary($user, itinerary) end 
            menu.choice "No, go back" => -> do tty_view_itineraries($user) end
        end
    end

    def tty_delete_itinerary(user, itinerary)
        # addresses = itinerary.movie_scenes.map do |moviescene|                            moviescene.location.location_address
        # end
        # puts addresses 
        user.itineraries.destroy 
        user.reload
        tty_view_addresses(user, itinerary) 
    end

  def tty_movie_scenes(movie)
     $my_movie = Movie.all.find_by(title: movie)
     array = []
     $my_movie.movie_scenes.each do |movie_scene|
        array <<  movie_scene.scene_description 
        array << movie_scene.location.location_address
     end
     puts array.join("\n")
      sleep(2)
        TTY::Prompt.new.select("Would you like to save these scenes to your itinerary?") do |menu|
            menu.choice "Yes" => -> do 
                $my_movie.movie_scenes.map do |movie_scene| 
                    $itinerary_name.create_itinerary_from_movie_scene(movie_scene)
                end
                puts "Your itinerary has been saved!"
            end
            menu.choice "Go back" => -> do tty_choose_movie($city) end
            end
      
    end
  



