class Mdm::WebPage < ActiveRecord::Base
  #
  # Relations
  #

  belongs_to :web_site,
             class_name: 'Mdm::WebSite',
             inverse_of: :web_pages

  #
  # Serializations
  #

  serialize :headers, MetasploitDataModels::Base64Serializer.new

  ActiveSupport.run_load_hooks(:mdm_web_page, self)
end

