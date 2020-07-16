    songs = [
      "Phoenix - 1901",
      "Tokyo Police Club - Wait Up",
      "Sufjan Stevens - Too Much",
      "The Naked and the Famous - Young Blood",
      "(Far From) Home - Tiga",
      "The Cults - Abducted",
      "Phoenix - Consolation Prizes",
      "Harry Chapin - Cats in the Cradle",
      "Amos Lee - Keep It Loose, Keep It Tight"
    ]
    def help 
      puts "I accept the following commands:"
      puts "- help : displays this help message"
      puts "- list : displays a list of songs you can play"
      puts "- play : lets you choose a song to play"
      puts "- exit : exits this program"
    end 
    
    def list(songs)
      songs.each_with_index do |song, index|
        puts "#{index}. #{song}"
      end 
    end
    
    def play(songs)
      puts "Please enter a song name or number:"
      users_input = gets.strip 
      play_response = "Invalid input, please try again"
      songs.each_with_index do |song, index|
        if users_input == song 
          play_response = "Playing #{song}"
        elsif users_input == index 
          play_response = "Playing #{song}"
        end 
        end
        puts play_response
      end
      
      def exit_jukebox
        puts "Goodbye"
      end 
      
      def run(songs) 
        puts "Please enter a command:"
        user_begin = gets.strip
        while user_begin != "exit" do 
        if user_begin == "help"
          help 
           puts "Please enter a command:"
        user_begin = gets.strip
          elsif user_begin == "list"
          list(songs)
           puts "Please enter a command:"
        user_begin = gets.strip
        elsif user_begin == "play"
        play(songs) 
         puts "Please enter a command:"
        user_begin = gets.strip
      end 
    end 
        if user_begin == "exit"
        exit_jukebox
      end 
    end 
        