class Estate < ApplicationRecord
    has_many :stations, dependent: :destroy
    accepts_nested_attributes_for :stations, reject_if: 
        proc {|attributes| attributes['station_line'].blank? and 
        attributes['station_name'].blank? and 
        attributes['walk_time'].blank?}, allow_destroy: true
end
