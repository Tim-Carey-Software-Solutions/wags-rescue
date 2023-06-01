class AdoptionApplicationPolicy < ApplicationPolicy

  def index?
    user.admin?
  end
end