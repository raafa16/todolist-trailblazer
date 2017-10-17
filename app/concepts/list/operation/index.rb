class List::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options['model'] = ::List.all.reverse_order
  end
end