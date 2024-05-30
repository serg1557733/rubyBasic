module ExchangeIt
  class User
    attr_reader :name, :surname
    def initialize(name, surname)
      @name = name
      @surname = surname
    end
  end
end
