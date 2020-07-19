class Picture < ApplicationRecord
    #WIDTHS = %i{640 200 142 80}
    #STYLES = WIDTHS.map {|width| [:"w#{width}", "#{width}x>"]}.to_h
    
    belongs_to :holder, polymorphic: true
                        
    has_attached_file :image,
                    :styles      => { :medium => "300x300>", :thumb => "100x100>" },
                    # 1つのモデルが複数の画像をもつ（has_many）場合、下記の指定が必要らしい
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"
    validates_attachment_size :image, less_than: 1.5.megabytes
    validates_attachment_content_type :image, content_type: %w{image/jpeg image/jpg image/png image/gif}
end
