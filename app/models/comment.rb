class Comment < ActiveRecord::Base

  # Attributes
  attr_accessible :name, :email, :url, :content, :user_ip, :user_agent, :referrer
  attr_accessible :post_id, :approved, :as => :admin

  # Validations
  validates_presence_of :post_id, :name, :content
  validates :email, :presence => true, :email_format => true
  validates :url, :url_format => true

  # Associations
  belongs_to :post

  # Callbacks
  before_validation :add_protocol_to_url
  after_save :update_counter_cache
  after_destroy :update_counter_cache

  def request=(request)
    self.user_ip = request.remote_ip
    self.user_agent = request.env['HTTP_USER_AGENT']
    self.referrer = request.env['HTTP_REFERER']
  end

  private

    def add_protocol_to_url
      self.url = 'http://' + url unless url.blank? || url =~ /http/
    end

    def update_counter_cache
      self.post.comments_count = post.comments.where({:approved => true}).count
      self.post.save
    end
end
