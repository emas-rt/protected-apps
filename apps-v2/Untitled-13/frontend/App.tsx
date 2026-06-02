/** @jsxRuntime automatic */

export default function App() {
  return (
    <div className="w-screen h-screen bg-green-500 flex flex-col items-center justify-center relative">
      <span className="text-foreground text-8xl font-bold lowercase tracking-wider">brat</span>
      <div className="absolute bottom-4 text-sm font-medium text-muted-foreground">
        mesi was here — {new Date().toLocaleString()}
      </div>
    </div>
  )
}
