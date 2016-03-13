class Image < ActiveRecord::Base
  enum category: %w(portrait landscape city\ exploration nature animal)

  validates :name, presence: true
  def tags_text
    self.tags.join(', ')
  end
  def tags_text=(val)
    self.tags = val.split(',').map{|tag| tag.strip}
  end
end
