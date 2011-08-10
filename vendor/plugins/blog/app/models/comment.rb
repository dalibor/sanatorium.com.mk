EMAIL_NAME_REGEX = '[\w\.%\+\-]+'.freeze
DOMAIN_HEAD_REGEX = '(?:[A-Z0-9\-]+\.)+'.freeze
DOMAIN_TLD_REGEX = '(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|jobs|museum)'.freeze
EMAIL_REGEX = /\A#{EMAIL_NAME_REGEX}@#{DOMAIN_HEAD_REGEX}#{DOMAIN_TLD_REGEX}\z/i
URL_REGEX = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
class Comment < ActiveRecord::Base

  include ActiveModel::MassAssignmentSecurity

  # Attributes
  attr_accessible :name, :email, :url, :content, :user_ip, :user_agent, :referrer
  validates_presence_of :post_id, :name, :email, :content
  validates_format_of :email, :with => EMAIL_REGEX, :message => "is not an email address."
  validates_format_of :url, :with => URL_REGEX, :allow_blank => true

  # Associations
  belongs_to :post

  # Scopes
  scope :spam_comments, :conditions => { :approved => false }
  scope :valid_comments, :conditions => { :approved => true }
  #scope :on_posts_of, proc { |current_user|


  # Callbacks
  before_validation :add_protocol_to_url
  #after_save :update_counter_cache
  #after_destroy :update_counter_cache

  def request=(request)
    self.user_ip = request.remote_ip
    self.user_agent = request.env['HTTP_USER_AGENT']
    self.referrer = request.env['HTTP_REFERER']
  end

  #def admin
    #true
  #end

  private

    def add_protocol_to_url
      self.url = 'http://' + url unless url.blank? || url =~ /http/
    end

    #def update_counter_cache
      #self.post.comments_count = post.comments.where("approved = true").count
      #self.post.save
    #end
end
