class Task < ActiveRecord::Base
  belongs_to :list

  validates_presence_of :list, :content

  def incomplete?
    completed_at.nil?
  end
  def completed?
    !incomplete?
  end

  def toggle_complete!
    if incomplete?
      update! completed_at: Time.now
    else
      update! completed_at: nil
    end
  end
end
