class AddTrackFileToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :track_file, :string
  end
end
