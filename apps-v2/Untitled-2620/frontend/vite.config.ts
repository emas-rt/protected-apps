import { defineConfig, type Plugin } from 'vite';
import { fileURLToPath } from 'node:url';

// NOTE: The @vitejs/plugin-react plugin is injected by the sandbox harness.
// Do NOT add react() here again or every module gets the React Refresh
// preamble twice ("Identifier `RefreshRuntime` has already been declared").

// The sandbox-managed frontend/index.html was removed by an upstream merge and
// cannot be recreated (it is a read-only, system-owned path). Use a writable
// app.html as the Vite entry instead — it loads the canonical /index.tsx.
const entryHtml = fileURLToPath(new URL('./app.html', import.meta.url));

// Serve app.html for "/" and "/index.html" requests during dev so the preview
// resolves without a root index.html on disk.
function htmlEntryFallback(): Plugin {
  return {
    name: 'html-entry-fallback',
    configureServer(server) {
      server.middlewares.use((req, _res, next) => {
        if (req.url === '/' || req.url === '/index.html') {
          req.url = '/app.html';
        }
        next();
      });
    },
  };
}

// Port 5175 runs alongside DDC (5174) without colliding with 5173.
export default defineConfig({
  plugins: [htmlEntryFallback()],
  server: {
    host: '127.0.0.1',
    port: 5175,
    strictPort: true,
  },
  build: {
    rollupOptions: {
      input: entryHtml,
    },
  },
});
