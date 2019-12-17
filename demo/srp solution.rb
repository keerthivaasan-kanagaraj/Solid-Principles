class Post
    attr_reader :like_obj
    def initialize(postname,content)
        @name = postname
        @content = content
        @like_obj = LikeClass.new
    end
end

class LikeClass
    def initialize
        @likes = 0
    end
    def up
        @likes = @likes + 1
    end
end

p = Post.new("post1","Welcome to freshworks")
p.like_obj.up

class Comments
    attr_reader :like_obj
    def initialize(post,content)
        @post = post
        @content = content
        @likes = LikeClass.new
    end
end

c = Comments.new(p,"Wow")
c.like_obj.up
