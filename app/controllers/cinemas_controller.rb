class CinemasController < ApplicationController
  @@cinemas = {'kapali' =>['9 AM', '12 PM', '5 PM'], '24' =>['9 AM', '12 PM', '5 PM'], 'civil war' =>['9 AM', '12 PM'],'god of ejypt' =>['9 AM', '12 PM'], 'evil dead' =>['9 AM', '12 PM']}
  def index

  end
    def show_cinemas
    # @show_times=''
    @cinemas = @@cinemas.keys
    # @cinemas.each { |film| @show_times+@@cinemas[film].to_s}
    # puts "------------------------------"+@show_times
    # @show_times
  end
  def show_times
    @cinema_time_details = []
    @@cinemas.each do |film|
     @film = film[0].strip
     @show_times = film[1].split(",").join(" - ")
     @cinema_time_details<<[@film,@show_times+"\n"]
    end
    @cinema_time_details
  end
end
