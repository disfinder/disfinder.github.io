.PHONY: server note article post show

server:
	hugo server

note:
	@test $(NAME) || ( echo "Please set NAME for note"; exit 1)
	hugo new content docs/notes/$(NAME)/index.md

article:
	@test $(NAME) || ( echo "Please set NAME for article"; exit 1)
	hugo new content docs/articles/$(NAME)/index.md

post:
	@test $(NAME) || ( echo "Please set NAME for article"; exit 1)
	hugo new content content/en/posts/$(shell date "+%Y/%m/%d")/$(NAME)/index.md
	hugo new content posts/$(shell date "+%Y/%m/%d")/$(NAME)/index.md
#	hugo new content posts/$(shell date "+%Y/%m/%d")/$(NAME)/index.md --editor code
show:
	gh workflow view 80602993
