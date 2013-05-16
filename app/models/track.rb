# == Schema Information
#
# Table name: tracks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  track_title :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Track < ActiveRecord::Base
  attr_accessible :title, :track_file, :artist

  mount_uploader :track_file, TrackUploader
end
