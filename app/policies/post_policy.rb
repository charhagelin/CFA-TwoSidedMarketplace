class PostPolicy < ApplicationPolicy

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end

  def create?
    user.admin?
    user.moderator?
  end

  def new?
    user.admin?
    user.moderator?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
