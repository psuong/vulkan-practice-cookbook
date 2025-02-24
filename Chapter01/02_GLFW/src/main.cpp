#include <shared/HelpersGLFW.h>
#include <stdio.h>

int main() {
	uint32_t w = 1280;
	uint32_t h = 720;
	GLFWwindow* window = initWindow("GLFW Window", w, h);

	while (!glfwWindowShouldClose(window)) {
		glfwPollEvents();
	}

	glfwDestroyWindow(window);
	glfwTerminate();
	return 0;
}
