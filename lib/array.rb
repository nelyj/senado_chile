class Array
  def string_to_symbol
    self.each do |element|
      element.keys.each do |key|
        element[(key.downcase.to_sym rescue key) || key] = element.delete(key)
      end
    end
  end
end
