class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :address, :landlord_id, :tenant_id
  belongs_to :landlord
  has_many :tenants
end
