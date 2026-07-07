import confetti from 'canvas-confetti'
import { PartyPopper } from 'lucide-react'
import { Button } from './lib/shadcn/button'

export default function App() {
  const fire = () => {
    confetti({
      particleCount: 120,
      spread: 80,
      origin: { y: 0.7 },
    })
  }

  return (
    <div className="min-h-screen flex flex-col items-center justify-center gap-6 bg-background text-foreground">
      <h1 className="text-3xl font-bold">Confetti Time</h1>
      <p className="text-muted-foreground">Powered by canvas-confetti</p>
      <Button size="lg" onClick={fire} className="gap-2">
        <PartyPopper className="w-5 h-5" />
        Celebrate!!!
      </Button>
    </div>
  )
}
