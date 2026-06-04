import { Loader2 } from 'lucide-react'

export default function PageLoader() {
  return (
    <div className="min-h-[40vh] grid place-items-center text-muted-foreground">
      <div className="flex items-center gap-2 text-sm">
        <Loader2 className="w-4 h-4 animate-spin" />
        Loading page...
      </div>
    </div>
  )
}
