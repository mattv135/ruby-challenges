class Blog
=begin	attr_accessor :title, :all_blog_posts, :total_blog_posts
=end
	def set_title=(title)
		@title = title
	end

	def get_title
		return title
	end

	def set_all_blog_posts=(all_blog_posts)
		@all_blog_posts = all_blog_posts
	end

	def get_all_blog_posts
		return all_blog_posts
	end

	def set_total_blog_posts=(total_blog_posts)
		@total_blog_posts = total_blog_posts
	end


  def initialize
    @created_at = Time.now
    puts "Name Your Blog:"
    @title = gets.chomp
    @all_blog_posts = []
    @total_blog_posts = 0
  end
  
  def create_blogpost
    new_blog_post = Blog_Post.new
    puts "here is my new blog post"
    @all_blog_posts << new_blog_post
    @total_blog_posts +=1
  end 
  
  def collect_blog_posts
    return @all_blog_posts
  end
 
  def publish(all_blog_posts)
    all_blog_posts.each do |blog_post|
      puts blog_post.title
      puts blog_post.created_at
      puts blog_post.content
    end
  end
end
 
 
class Blog_Post
  attr_accessor :title, :created_at, :content
  
  def initialize
    @created_at = Time.now
    puts "Name your blog post:"
    @title = gets.chomp
    
    puts "Your blog post content:"
    @content = gets.chomp
  end
  
  def edit_blog_content
    puts "New blog title:"
    @title = gets.chomp
 
    puts "New blog text:"
    @content = gets.chomp
  end
  
end
 
my_blog = Blog.new
first_blog_post = my_blog.create_blogpost
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)
end
