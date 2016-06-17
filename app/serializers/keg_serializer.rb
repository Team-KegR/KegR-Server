class KegSerializer < ActiveModel::Serializer
  attributes :id, :name, :validation, :kicked, :ratings, :comments
end
