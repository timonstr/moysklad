module Moysklad::Entities
  class Currency < Base
    include CommonObject
    include Moysklad::Entities::XmlFix

    tag 'currency'

    #attribute :enteredRate,       Float
    #attribute :invertRate,        Boolean
    #attribute :rate,              Float
    #attribute :name,              String

    #element   :code,              String
  end
end
