class RenameTitleColumn < ActiveRecord::Migration
	def self.change
	  rename_column :tracks, :track_title, :track_file
	end
end
