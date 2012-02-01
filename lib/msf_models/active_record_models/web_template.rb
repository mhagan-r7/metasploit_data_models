module MsfModels::ActiveRecordModels::WebTemplate
  def self.included(base)
    base.class_eval{
      belongs_to :campaign, :class_name => "Msm::Campaign"
      extend ::MsfModels::SerializedPrefs
      serialize :prefs, ::MsfModels::Base64Serializer.new

      serialized_prefs_attr_accessor :exploit_type
      serialized_prefs_attr_accessor :exploit_name, :exploit_opts
    }
  end
end
