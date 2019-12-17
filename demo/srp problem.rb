class Post
    def initialize(postname,content)
        @name = postname
        @content = content
        @likes = 0
    end
    def like
        @likes = @likes + 1
    end
end

p = Post.new("post1","Welcome to freshworks")
p.like

class Comments
    def initialize(post,content)
        @post = post
        @content = content
        @likes = 0
    end
    def like
        @likes = @likes + 1
    end
end
c = Comments.new(p,"Wow")
c.like