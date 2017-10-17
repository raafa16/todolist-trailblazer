module List::Cell
  class Index < Trailblazer::Cell
    def total
      return "No posts" if model.size == 0
    end
  end
end