class HomeController < ApplicationController
  def Index
    @testimonials = Testimonial.all
  end
end
