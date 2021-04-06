# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?  # additional permissions for logged in users (they can see their own exams)
      can :read, Exam, user_id: user.id

      if user.admin?  # additional permissions for administrators
        can :manage, :all
      end
    end
  end
end
