class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  def summary
    byebug
  end
end
