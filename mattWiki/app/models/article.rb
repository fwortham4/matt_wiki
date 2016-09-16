class Article < ApplicationRecord
  belongs_to :category
  has_many :versions
  accepts_nested_attributes_for :versions
  validates_presence_of :category_id

  def selected_featured
    old_feature = Article.find_by_featured(true)

    if old_feature
      old_feature[:featured] = false
      old_feature.save
    end

    self[:featured] = true
    self.save
  end

end
