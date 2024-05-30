# frozen_string_literal: true

module ExchangeIt
  class Account
    include ExchangeIt::Utils::Uid
    attr_reader :uid, :balance

    def initialize(user)
      @uid = hash user.name, user.surname
      @balance = 0
    end

    def transfer(reciver, amount)
      withdraw amount
      reciver.deposit amount
    end

    def withdraw(amount)
      raise unless amount.positive?
      raise if amount > @balance
      @balance -= amount
    end
  end
end
