class Catalog::Item::YoutubeVideo < Catalog::Item
  validates :youtube_video_id, presence: true
end
