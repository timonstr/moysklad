module Moysklad::Entities
  class Good < Base
    include CommonObject
    include Moysklad::Entities::XmlFix

    tag 'good'

    attribute :isSerialTrackable, Boolean
    attribute :buyPrice,          Float
    attribute :buyCurrencyUuid,   String
    attribute :minPrice,          Float
    attribute :salePrice,         Float
    attribute :saleCurrencyUuid,  String
    attribute :weight,            Float
    attribute :volume,            Float
    attribute :parentUuid,        String
    attribute :productCode,       String
    attribute :uomUuid,           String
    attribute :countryUuid,       String

    element   :code,              String
    element   :salePrices,        Moysklad::Entities::SalePrices

    has_many  :attributes,        Attribute

    # preferences
    # images

    def features universe
      cache :features, universe do
        universe.features.where goodUuid: uuid
      end
    end
  end
end
