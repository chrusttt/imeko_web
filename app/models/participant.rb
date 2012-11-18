class Participant < ActiveRecord::Base
  mount_uploader :file, FileUploader
  attr_accessible :country, :department, :email, :file, :first_name, :mobile, :organisation, :second_name, :street, :speaker, :surname, :title, :vat, :zip
  validates_presence_of :surname, :first_name, :country, :department, :email, :street, :organisation, :vat, :zip
  validates_presence_of :file, 
  						presence: true,
  						if: Proc.new { |f| f.speaker }
  before_create :abstract_file
  def abstract_file
	if self.file?
		self.file_file_name = "#{self.id}#{self.surname}_abstract_imeko2013.pdf"
	end
end
end
