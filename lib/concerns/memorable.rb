module Memorable
  def reset_all
    all.clear
  end

  def all
    self.class_variable_get "@@items"
  end

  def count
    all.count
  end
end

