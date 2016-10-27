class HomeController < ApplicationController
  def index
    @failures = Failure.all
  end
end
