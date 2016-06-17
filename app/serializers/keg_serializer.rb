class KegSerializer < ActiveModel::Serializer
  attributes :id, :name, :validation, :kicked, :rating, :comments
end
