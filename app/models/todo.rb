class Todo < ApplicationRecord
  before_create :check_complete
  def check_complete
    self.complete = false if !self.complete
  end

  def check_status_completed
    self.complete = true if !self.complete
    self.save
  end
end
