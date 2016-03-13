module ApplicationHelper
  def image_categories
    Image.categories.inject({}) do |hash, item|
      hash.merge!(t("categories.#{item.first.gsub(' ', '_' )}") => item.first)
    end
  end
end
