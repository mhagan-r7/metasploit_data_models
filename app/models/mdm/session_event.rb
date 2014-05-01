class Mdm::SessionEvent < ActiveRecord::Base
  #
  # Relations
  #

  belongs_to :session,
             class_name: 'Mdm::Session',
             inverse_of: :events

  ActiveSupport.run_load_hooks(:mdm_session_event, self)
end
