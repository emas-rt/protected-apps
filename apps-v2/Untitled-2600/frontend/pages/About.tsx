import { Code, GitBranch, Sparkles } from 'lucide-react'

export default function About() {
  return (
    <div className="max-w-3xl mx-auto">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-foreground">About this app</h1>
        <p className="text-muted-foreground">
          How the multi-page architecture and code splitting work. TESTING 123 ABC hello
        </p>
      </header>

      <div className="space-y-4">
        <Section
          icon={<GitBranch className="w-5 h-5 text-primary" />}
          title="React Router"
          body="Each top-level path is mapped to its own page component using <Routes>/<Route>. Navigation is client-side, so transitions are instant after the chunk loads."
        />
        <Section
          icon={<Code className="w-5 h-5 text-primary" />}
          title="Dynamic imports"
          body="Pages are imported via React.lazy(() => import('./pages/X')). Vite detects the dynamic import boundary at build time and emits a separate JS chunk per page."
        />
        <Section
          icon={<Sparkles className="w-5 h-5 text-primary" />}
          title="Suspense"
          body="A <Suspense> boundary renders a lightweight fallback while the chunk for the next page streams in over the network."
        />
      </div>

      <div className="mt-8 p-4 rounded-md bg-muted text-sm font-mono text-muted-foreground overflow-x-auto">
        const Dashboard = lazy(() =&gt; import('./pages/Dashboard'))
      </div>
    </div>
  )
}

function Section({
  icon,
  title,
  body,
}: {
  icon: React.ReactNode
  title: string
  body: string
}) {
  return (
    <div className="flex gap-4 p-5 bg-card text-card-foreground border rounded-lg shadow-sm">
      <div className="mt-0.5">{icon}</div>
      <div>
        <div className="font-semibold mb-1">{title}</div>
        <p className="text-sm text-muted-foreground">{body}</p>
      </div>
    </div>
  )
}
