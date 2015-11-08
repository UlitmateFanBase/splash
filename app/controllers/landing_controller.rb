class LandingController < ApplicationController
  def splash
  end

  def landing
    @teams = Team.joins(:users).group("users.team_id").order("count(users.team_id) DESC")
  end
end
