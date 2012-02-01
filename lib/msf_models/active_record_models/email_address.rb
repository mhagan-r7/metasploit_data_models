module MsfModels::ActiveRecordModels::EmailAddress
  def self.included(base)
    base.class_eval {
      belongs_to :campaign, :class_name => "Msm::Campaign"

      validates_uniqueness_of :address, :scope => :campaign_id
    }
  end
end