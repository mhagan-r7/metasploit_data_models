class AddQuery < ActiveRecord::Migration[4.2]
	def self.up
		add_column :web_forms, :query, :text
		add_column :web_vulns, :query, :text
	end
	def self.down
		remove_column :web_forms, :query
		remove_column :web_vulns, :query
	end
end
