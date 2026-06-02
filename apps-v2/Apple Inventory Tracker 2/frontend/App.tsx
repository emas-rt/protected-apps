import { useEffect } from 'react'
import { useCurrentUser } from './hooks/useCurrentUser'
import { useAddOnePlusOne } from './hooks/backend/math'

export default function App() {
  const { user, loading: userLoading } = useCurrentUser()
  const { data, loading, error, trigger } = useAddOnePlusOne()

  useEffect(() => {
    trigger()
  }, [])

  return (
    <div className="min-h-screen bg-background text-foreground p-8">
      <div className="max-w-2xl mx-auto space-y-6">
        <section className="p-6 bg-card text-card-foreground border border-border rounded-lg">
          <h2 className="text-xl font-bold mb-4">Current User</h2>
          {userLoading ? (
            <p className="text-muted-foreground">Loading...</p>
          ) : user ? (
            <dl className="grid grid-cols-[auto_1fr] gap-x-4 gap-y-2 text-sm">
              <dt className="font-medium text-muted-foreground">ID</dt>
              <dd>{user.id}</dd>
              <dt className="font-medium text-muted-foreground">Name</dt>
              <dd>{user.fullName}</dd>
              <dt className="font-medium text-muted-foreground">Email</dt>
              <dd>{user.email}</dd>
              <dt className="font-medium text-muted-foreground">Locale</dt>
              <dd>{user.locale}</dd>
            </dl>
          ) : (
            <p className="text-destructive">Failed to load user.</p>
          )}
        </section>

        <section className="p-6 bg-card text-card-foreground border border-border rounded-lg">
          <h2 className="text-xl font-bold mb-4">Backend: 1 + 1</h2>
          {loading ? (
            <p className="text-muted-foreground">Loading...</p>
          ) : error ? (
            <p className="text-destructive">Error: {error}</p>
          ) : (
            <p className="text-2xl font-mono">{String(data)}</p>
          )}
        </section>
      </div>
    </div>
  )
}
