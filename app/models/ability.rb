# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # user is nil for a logged-out/guest visitor, so default to a blank User
    # to avoid nil errors below.
    user ||= User.new
 
    if user.admin?
      can :manage, :all
    else
      # Covers regular "user" role, "power_user" role, and guests (not signed in).
      can :read, :all
    end
  
  end
end
