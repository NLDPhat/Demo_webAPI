class BookSerializer < ActiveModel::Serializer
  attributes :id , :tittle
  has_one :author
end
