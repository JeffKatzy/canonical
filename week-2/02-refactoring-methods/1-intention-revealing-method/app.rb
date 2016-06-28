require_relative 'setup'

# Intention Revealing Method
# Extract relevant concepts into methods or variables with proper names
# Code should explain itself

class ProjectsController
  def index
    # When user is admitted at least a week ago we show its active projects
    if user_admitted_a_week_ago
      @projects = current_user.active_projects

    # If not admitted we show some featured projects, and set a marketing flash
    # message when user is new
    else
      if current_user && current_user.created_at > (Time.now - 7*24*3600)
        @flash_msg = 'Sign up for having your own projects, and see promo ones!'
      end
      @projects = Project.featured
    end
  end

  def user_admitted_a_week_ago
    current_user && current_user.created_at < (Time.now - 7*24*3600)
  end

  def i_punched_him
    made_fist
    moved_hand
  end

  def made_fist
    
  end
end
