#define SOKOL_IMPL

#if defined(__EMSCRIPTEN__)
	#define SOKOL_GLES3
#elif defined(_MSC_VER)
	#define SOKOL_GLCORE
#endif

#include "sokol_app.h"
#include "sokol_gfx.h"
#include "sokol_glue.h"

#include <stdio.h>

// Using smartphones resolution ratios
#define RESOLUTION_WIDTH 720 // 9 ratio
#define RESOLUTION_HEIGHT 1280 // 16 ratio

void init(void) {

}

void frame(void) {
}

void cleanup(void) {

}

void event(const sapp_event *event) {

}

static struct nk_context *ctx;

sapp_desc sokol_main(int argc, char* argv[]) {
	sapp_desc app = {
		.init_cb = init,
		.frame_cb = frame,
		.cleanup_cb = cleanup,
		.event_cb = event,
		.width = RESOLUTION_WIDTH,
		.height = RESOLUTION_HEIGHT,
		.window_title = "Personal website",
	};

	return app;
}
