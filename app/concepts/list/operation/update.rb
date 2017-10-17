class List::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(List, :find_by)
    step Contract::Build( constant: List::Contract::Create )
  end

  step Nested(Present)
  step Contract::Validate( key: :list )
  step Contract::Persist()
end