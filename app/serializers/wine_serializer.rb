class WineSerializer < ActiveModel::Serializer
  attributes :id, :style, :variety, :producer,
             :appearance, :aroma, :tasting_notes,
             :memories
end
