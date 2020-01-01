require_relative 'host.rb'

class Listing
    attr_reader :host, :beds, :dates_available, :cancellation, :guests, :reviews, :price
    attr_writer :host, :beds, :dates_available, :cancellation, :guests, :reviews, :price
    def initialize(host, beds, dates_available, price)
        @host = "host"
        @beds = "beds"
        @dates_available = "dates_available"
        @price = "price"
        @cancellation = "strict"
        @guests = []
        @reviews = {}
    end
    def reserve_and_pay(guest_name, nights)
        @guests.push(guest_name)
        payment = nights * price
        return payment
    end
    def leave_review(guest_name, text)
        @reviews.store(guest_name, text)
    end
end
