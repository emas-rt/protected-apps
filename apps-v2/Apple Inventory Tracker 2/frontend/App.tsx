/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */
import { useState } from 'react'

import { StarterCanvas } from './components/StarterCanvas'

export function CenterOverlay() {
  return (
    <div style={{ position: 'absolute', inset: 0, zIndex: 1, pointerEvents: 'none' }}>
      <div
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
          Hellooooo!!!!
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
          World :)
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

    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
