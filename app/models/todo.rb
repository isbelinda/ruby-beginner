class Todo < ApplicationRecord
  before_create :check_complete
  def check_complete
    self.complete = false if !self.complete
  end
end
