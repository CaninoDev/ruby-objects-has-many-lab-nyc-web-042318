require 'pry'
class Author
  attr_accessor :name, :posts
  attr_reader :post_count

  @@post_count = 0

  def initialize(name = 'Tito Puente')
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
    @posts << new_post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
