.PHONY: help new-tech new-other

help:
	@echo "使い方:"
	@echo "  make new-tech SLUG=your-post-slug   # 技術記事を作成"
	@echo "  make new-other SLUG=your-post-slug  # その他記事を作成"
	@echo ""
	@echo "例:"
	@echo "  make new-tech SLUG=why-hugo"

new-tech:
	@if [ -z "$(SLUG)" ]; then \
		echo "SLUG を指定してください。例: make new-tech SLUG=why-hugo"; \
		exit 1; \
	fi
	hugo new "content/tech/$(SLUG)/$(SLUG).md"

new-other:
	@if [ -z "$(SLUG)" ]; then \
		echo "SLUG を指定してください。例: make new-other SLUG=my-story"; \
		exit 1; \
	fi
	hugo new "content/other/$(SLUG)/$(SLUG).md"
