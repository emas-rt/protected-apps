import { Link } from 'react-router-dom'
import { Button } from '../lib/shadcn/button'

export default function NotFound() {
  return (
    <div className="max-w-md mx-auto text-center py-16">
      <div className="text-7xl font-bold text-muted-foreground mb-2">404</div>
      <h1 className="text-2xl font-bold mb-2">Page not found</h1>
      <p className="text-muted-foreground mb-6">
        The page you are looking for doesn't exist or has moved.
      </p>
      <Button asChild>
        <Link to="/">Back home</Link>
      </Button>
    </div>
  )
}
