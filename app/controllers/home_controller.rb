class HomeController < ApplicationController
  before_action :authenticate_user! , :except => [:home]
  before_action :authorize_as_admin! , :except => [:home]

  def home
  end
end
