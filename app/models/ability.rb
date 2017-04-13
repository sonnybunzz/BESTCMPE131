class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    can :read, :all
    if user && user.admin_role?
      can :manage, :all
      can :access, :rails_admin
      can :dashboard
    end
    if user.employee_role?
      can :manage, User
    end
  end
end
