class Product < ActiveRecord::Base
  has_many :line_items

  before_destroy :ensure_not_referenced

  private

  def ensure_not_referenced
    if line_items.empty?
      return true
    else
      errors.add(:base, "#{self.name} is still referenced")
      return false
    end
  end
end
