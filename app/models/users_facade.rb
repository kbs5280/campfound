class UsersFacade
  attr_reader :user

  def initialize(current_user)
    @user = current_user
  end

  def searches
    user.searches
  end
end
