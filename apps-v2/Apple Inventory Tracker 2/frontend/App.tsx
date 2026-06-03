/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */
import { StarterCanvas } from './components/StarterCanvas'

export function CenterOverlay() {
  return (
    <div style={{ position: 'absolute', inset: 0, zIndex: 1, pointerEvents: 'none' }}>
      <div
      >
hi hi hi hi
      </div>
    </div>
  )
}

export default function App() {
  return (
    <div
    >
      <StarterCanvas />
      <CenterOverlay />

    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
