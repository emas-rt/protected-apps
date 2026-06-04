import { useEffect } from 'react'
import { Link } from 'react-router-dom'
import { ArrowRight, Zap, Layers, Route, User, Calculator } from 'lucide-react'
import { useCurrentUser } from '../hooks/useCurrentUser'
import { useAddOne } from '../hooks/backend/math'

export default function Home() {
  const { user, loading: userLoading } = useCurrentUser()
  const { data: addData, loading: addLoading, error: addError, trigger: triggerAdd } = useAddOne()

  useEffect(() => {
    triggerAdd()
  }, [])

  return (
    <div className="max-w-4xl mx-auto">
      <div className="text-center mb-12">
        <h1 className="text-5xl font-bold tracking-tight mb-4 text-foreground">
          Multi-Page App
        </h1>
        <p className="text-xl text-muted-foreground max-w-2xl mx-auto">
          A real multi-page application using React Router with Vite's automatic
          code splitting. Each page is its own lazy-loaded chunk.
        </p>
      </div>

      <div className="grid gap-4 md:grid-cols-2 mb-8">
        <div className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
          <div className="flex items-center gap-2 mb-3">
            <User className="w-5 h-5 text-primary" />
            <h3 className="font-semibold">Current user</h3>
          </div>
          {userLoading ? (
            <p className="text-sm text-muted-foreground">Loading user...</p>
          ) : user ? (
            <div className="flex items-center gap-3">
              {user.profilePhotoUrl ? (
                <img
                  src={user.profilePhotoUrl}
                  alt={user.fullName}
                  className="w-10 h-10 rounded-full"
                />
              ) : (
                <div className="w-10 h-10 rounded-full bg-muted flex items-center justify-center text-sm font-medium text-muted-foreground">
                  {user.firstName.charAt(0)}{user.lastName.charAt(0)}
                </div>
              )}
              <div>
                <div className="font-medium">{user.fullName}</div>
                <div className="text-sm text-muted-foreground">{user.email}</div>
              </div>
            </div>
          ) : (
            <p className="text-sm text-muted-foreground">Not signed in.</p>
          )}
        </div>

        <div className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
          <div className="flex items-center gap-2 mb-3">
            <Calculator className="w-5 h-5 text-primary" />
            <h3 className="font-semibold">Backend math</h3>
          </div>
          {addLoading ? (
            <p className="text-sm text-muted-foreground">Computing 1 + 1...</p>
          ) : addError ? (
            <p className="text-sm text-destructive">Error: {addError}</p>
          ) : addData ? (
            <p className="text-sm text-muted-foreground">
              The backend says <span className="font-mono font-semibold text-foreground">1 + 1 = {addData.result}</span>
            </p>
          ) : (
            <p className="text-sm text-muted-foreground">No result yet.</p>
          )}
        </div>
      </div>

      <div className="grid gap-4 md:grid-cols-3 mb-12">
        <Feature
          icon={<Route className="w-6 h-6 text-primary" />}
          title="Client-side routing"
          body="React Router v7 manages navigation without full page reloads."
        />
        <Feature
          icon={<Layers className="w-6 h-6 text-primary" />}
          title="Code-split by route"
          body="Each route uses a dynamic import — Vite emits a separate chunk per page."
        />
        <Feature
          icon={<Zap className="w-6 h-6 text-primary" />}
          title="Lazy loaded"
          body="React.Suspense streams in each page only when you navigate to it."
        />
      </div>

      <div className="flex flex-wrap gap-3 justify-center">
        <NavCard to="/dashboard" label="Dashboard" />
        <NavCard to="/products" label="Products" />
        <NavCard to="/analytics" label="Analytics" />
        <NavCard to="/settings" label="Settings" />
        <NavCard to="/about" label="About" />
      </div>
    </div>
  )
}

function Feature({ icon, title, body }: { icon: React.ReactNode; title: string; body: string }) {
  return (
    <div className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
      <div className="mb-3">{icon}</div>
      <h3 className="font-semibold mb-1">{title}</h3>
      <p className="text-sm text-muted-foreground">{body}</p>
    </div>
  )
}

function NavCard({ to, label }: { to: string; label: string }) {
  return (
    <Link
      to={to}
      className="group inline-flex items-center gap-2 px-5 py-3 bg-primary text-primary-foreground rounded-md hover:bg-primary/90 transition-colors"
    >
      {label}
      <ArrowRight className="w-4 h-4 group-hover:translate-x-0.5 transition-transform" />
    </Link>
  )
}
