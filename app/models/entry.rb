class Entry < ActiveRecord::Base
    
    validates :title, presence: true
    validates :contents, presence: true
end
