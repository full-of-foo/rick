require 'launchy'

module Rick
  class Roll
    URL = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'.freeze

    def self.troll
      Launchy.open(URL) { $stderr.puts "Oops! had an error opening #{URL}" }
    end
  end
end
