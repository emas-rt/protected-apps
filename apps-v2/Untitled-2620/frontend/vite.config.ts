import { resolve } from 'node:path'
import { defineConfig, type Plugin } from 'vite'

// NOTE: The @vitejs/plugin-react plugin is injected by the sandbox harness.
// Do NOT add react() here again or every module gets the React Refresh
// preamble twice ("Identifier `RefreshRuntime` has already been declared").

// The sandbox-managed frontend/index.html was removed by an upstream merge and
// cannot be recreated (it is a read-only, system-owned path). Use a writable
// app.html as the Vite entry instead — it loads the canonical /index.tsx.

// Serve app.html for "/" and "/index.html" requests during dev so the preview
// resolves without a root index.html on disk.
function htmlEntryFallback(): Plugin {
  return {
    name: 'html-entry-fallback',
    configureServer(server) {
      server.middlewares.use((req, _res, next) => {
        if (req.url === '/' || req.url === '/index.html') {
          req.url = '/app.html'
        }
        next()
      })
    },
  }
}

// Port 5175 runs alongside DDC (5174) without colliding with 5173.
export default defineConfig({
  plugins: [htmlEntryFallback()],
  define: {
    __MY_APP_VERSION__: JSON.stringify('1.2.3'),
  },
  server: {
    host: '127.0.0.1',
    port: 5175,
    strictPort: true,
  },
  build: {
    rollupOptions: {
      input: resolve('./app.html'),
    },
  },
})
