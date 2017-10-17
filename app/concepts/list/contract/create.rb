require "reform"
require "reform/form/dry"

module List::Contract
  class Create < Reform::Form
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