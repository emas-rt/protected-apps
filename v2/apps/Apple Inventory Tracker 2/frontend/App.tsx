/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */
import { StarterCanvas } from './components/StarterCanvas'

export function CenterOverlay() {
  return (
    <div style={{ position: 'absolute', inset: 0, zIndex: 1, pointerEvents: 'none' }}>
      <div
        style={{
          position: 'absolute',
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          width: 209,
          padding: 24,
          borderRadius: 8,
          background: '#eeefe9',
          boxShadow: '0 0 0 1px rgba(0, 0, 0, 0.12)',
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'flex-start',
          gap: 16,
        }}
      >
        <p
          style={{
            margin: 0,
            fontFamily: 'Inter, sans-serif',
            fontSize: 16,
            fontWeight: 400,
            color: '#242424',
            letterSpacing: '-0.14px',
            lineHeight: 1.4,
            textAlign: 'left',
            textIndent: '-0.35em',
          }}
        >
          hello
        </p>
        <p
          style={{
            margin: 0,
            fontFamily: 'Inter, sans-serif',
            fontSize: 12,
            fontWeight: 400,
            color: '#242424',
            letterSpacing: '-0.14px',
            lineHeight: 1.4,
            opacity: 0.5,
            textAlign: 'left',
          }}
        >
          World
        </p>
      </div>
    </div>
  )
}

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
      <CenterOverlay />
      <div style={{ position: 'absolute', bottom: 192, left: 0, right: 0, zIndex: 2, display: 'flex', justifyContent: 'center', gap: 8, fontSize: 48, flexWrap: 'wrap' }}>
        {Array.from({ length: 25 }, (_, i) => {
          const people = ['👩', '👨', '🧑', '👶', '🧓', '💃', '🕺', '🧑‍🚀', '🧑‍🍳', '🧑‍🎤', '🧑‍💻', '🧑‍🎨', '🤹']
          return <span key={i}>{people[i % people.length]}</span>
        })}
      </div>
      <div style={{ position: 'absolute', bottom: 136, left: 0, right: 0, zIndex: 2, display: 'flex', justifyContent: 'center', gap: 8, fontSize: 48, flexWrap: 'wrap' }}>
        {Array.from({ length: 25 }, (_, i) => {
          const ocean = ['🐋', '🐬', '🐙', '🦈', '🐠', '🐡', '🦑', '🐚', '🦀', '🦞', '🐳', '🪸', '🌊']
          return <span key={i}>{ocean[i % ocean.length]}</span>
        })}
      </div>
      <div style={{ position: 'absolute', bottom: 80, left: 0, right: 0, zIndex: 2, display: 'flex', justifyContent: 'center', gap: 8, fontSize: 48, flexWrap: 'wrap' }}>
        {Array.from({ length: 25 }, (_, i) => {
          const veggies = ['🥕', '🥦', '🌽', '🥬', '🫑', '🍆', '🥒', '🧅', '🥔', '🌶️', '🧄', '🥗', '🫛']
          return <span key={i}>{veggies[i % veggies.length]}</span>
        })}
      </div>

    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
