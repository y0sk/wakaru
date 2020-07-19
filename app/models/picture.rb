class Picture < ApplicationRecord
  WIDTHS = %i{640 200 142 80}
  STYLES = WIDTHS.map {|width| [:"w#{width}", "#{width}x>"]}.to_h

  belongs_to :holder, polymorphic: true, optional: true

  has_attached_file :image, { styles: STYLES } # 同時に複数のサイズの写真を保存してくれる
  validates_attachment_size :image, less_than: 1.5.megabytes
  validates_attachment_content_type :image, content_type: %w{image/jpeg image/jpg image/png image/gif}
  validates :image, presence: true

end
