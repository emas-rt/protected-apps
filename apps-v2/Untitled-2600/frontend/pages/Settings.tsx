import { useEffect, useState } from 'react'
import { Save, User, Calculator } from 'lucide-react'
import { Input } from '../lib/shadcn/input'
import { Label } from '../lib/shadcn/label'
import { Switch } from '../lib/shadcn/switch'
import { Button } from '../lib/shadcn/button'
import { Separator } from '../lib/shadcn/separator'
import { useCurrentUser } from '../hooks/useCurrentUser'
import { useAddOne } from '../hooks/backend/math'

export default function Settings() {
  const { user, loading: userLoading } = useCurrentUser()
  const { data: addData, loading: addLoading, error: addError, trigger: triggerAdd } = useAddOne()

  useEffect(() => {
    triggerAdd()
  }, [])

  const [name, setName] = useState('Jane Doe')
  const [email, setEmail] = useState('jane@example.com')
  const [notifications, setNotifications] = useState(true)
  const [marketing, setMarketing] = useState(false)
  const [saved, setSaved] = useState(false)

  function onSave(e: React.FormEvent) {
    e.preventDefault()
    setSaved(true)
    setTimeout(() => setSaved(false), 1500)
  }

  return (
    <div className="max-w-2xl mx-auto">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-foreground">Settings</h1>
        <p className="text-muted-foreground">Manage your profile and preferences.</p>
      </header>

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

      <form onSubmit={onSave} className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm space-y-6">
        <div>
          <h2 className="font-semibold mb-4">Profile</h2>
          <div className="grid gap-4">
            <div className="grid gap-1.5">
              <Label htmlFor="name">Name</Label>
              <Input id="name" value={name} onChange={(e) => setName(e.target.value)} />
            </div>
            <div className="grid gap-1.5">
              <Label htmlFor="email">Email</Label>
              <Input
                id="email"
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
              />
            </div>
          </div>
        </div>

        <Separator />

        <div>
          <h2 className="font-semibold mb-4">Preferences</h2>
          <div className="space-y-4">
            <Toggle
              label="Product notifications"
              description="Receive updates about new releases and changes."
              checked={notifications}
              onChange={setNotifications}
            />
            <Toggle
              label="Marketing emails"
              description="Occasional tips, offers, and announcements."
              checked={marketing}
              onChange={setMarketing}
            />
          </div>
        </div>

        <div className="flex items-center justify-end gap-3">
          {saved && <span className="text-sm text-muted-foreground">Saved.</span>}
          <Button type="submit">
            <Save className="w-4 h-4" />
            Save changes
          </Button>
        </div>
      </form>
    </div>
  )
}

function Toggle({
  label,
  description,
  checked,
  onChange,
}: {
  label: string
  description: string
  checked: boolean
  onChange: (v: boolean) => void
}) {
  return (
    <div className="flex items-start justify-between gap-4">
      <div>
        <div className="font-medium">{label}</div>
        <div className="text-sm text-muted-foreground">{description}</div>
      </div>
      <Switch checked={checked} onCheckedChange={onChange} />
    </div>
  )
}
