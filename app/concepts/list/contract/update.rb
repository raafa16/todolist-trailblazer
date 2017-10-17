module List::Contract
  class Update < Reform::Form
    include Dry

    #:property
    property :todo

    #:validation
    validation do
      required(:todo).filled
    end
    #:validation end
  end
end