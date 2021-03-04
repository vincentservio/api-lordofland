class TenantsSerializer < ActiveModel::Serializer
  attributes :id, :name, :apartment_number, :building_id
  belongs_to :building
end
