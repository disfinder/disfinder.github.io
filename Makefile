server:
	hugo server

note:
	@test $(NAME) || ( echo "Please set NAME for note"; exit 1)
	hugo new content docs/notes/$(NAME)/index.md

.PHONY: server note
