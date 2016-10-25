class HomeController < ApplicationController
  def Index
    @noyaus = Noyau.all
  end
end
