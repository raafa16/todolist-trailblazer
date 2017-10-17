class List::Show < Trailblazer::Operation
  step Model(List, :find_by)
end