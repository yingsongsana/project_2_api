class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :style, :variety, :producer,
             :appearance, :aroma, :tasting_notes, :memories
  has_one :user
end
