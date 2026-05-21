/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */
import { StarterCanvas } from './components/StarterCanvas'

export default function App() {
  return (
    <div
      style={{
        fontFamily: 'sans-serif',
        padding: 0,
        margin: 0,
        background: '#e9ebdf',
        position: 'relative',
        width: '100vw',
        height: '100vh',
        overflow: 'hidden',
      }}
    >
      <StarterCanvas />
      <div style={{ position: 'absolute', top: 40, left: 0, right: 0, zIndex: 2, display: 'flex', justifyContent: 'center' }}>
        <h1 style={{ fontFamily: 'Inter, sans-serif', fontSize: 48, fontWeight: 700, color: '#242424', letterSpacing: '-0.5px', margin: 0 }}>erin</h1>
      </div>

    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
