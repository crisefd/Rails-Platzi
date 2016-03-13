class Image < ActiveRecord::Base
  enum category: %w(portrait landscape city\ exploration nature animal)
end
