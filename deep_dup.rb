# The Array class here is responsible for creating a new method
# usable by Arrays, namely deep_dup
class Array
  # :reek:FeatureEnvy
  def deep_dup
    map { |item| item.is_a?(Array) ? item.deep_dup : item }
  end
end
