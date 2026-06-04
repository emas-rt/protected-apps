import { useMemo } from 'react'
import {
  BarChart,
  Bar,
  PieChart,
  Pie,
  Cell,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from 'recharts'

const COLORS = [
  'hsl(var(--chart-1))',
  'hsl(var(--chart-2))',
  'hsl(var(--chart-3))',
  'hsl(var(--chart-4))',
  'hsl(var(--chart-5))',
]

export default function Analytics() {
  const traffic = useMemo(
    () => [
      { day: 'Mon', desktop: 320, mobile: 220 },
      { day: 'Tue', desktop: 290, mobile: 280 },
      { day: 'Wed', desktop: 410, mobile: 310 },
      { day: 'Thu', desktop: 380, mobile: 340 },
      { day: 'Fri', desktop: 450, mobile: 410 },
      { day: 'Sat', desktop: 220, mobile: 480 },
      { day: 'Sun', desktop: 180, mobile: 460 },
    ],
    [],
  )

  const sources = useMemo(
    () => [
      { name: 'Direct', value: 400 },
      { name: 'Search', value: 320 },
      { name: 'Social', value: 210 },
      { name: 'Referral', value: 150 },
      { name: 'Email', value: 90 },
    ],
    [],
  )

  return (
    <div className="max-w-6xl mx-auto">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-foreground">Analytics</h1>
        <p className="text-muted-foreground">Traffic breakdown for the past week.</p>
      </header>

      <div className="grid gap-6 lg:grid-cols-2">
        <div className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
          <h2 className="text-lg font-semibold mb-4">Visitors by device</h2>
          <ResponsiveContainer width="100%" height={300}>
            <BarChart data={traffic}>
              <CartesianGrid strokeDasharray="3 3" stroke="hsl(var(--border))" />
              <XAxis dataKey="day" stroke="hsl(var(--muted-foreground))" />
              <YAxis stroke="hsl(var(--muted-foreground))" />
              <Tooltip
                contentStyle={{
                  background: 'hsl(var(--popover))',
                  border: '1px solid hsl(var(--border))',
                  borderRadius: 6,
                  color: 'hsl(var(--popover-foreground))',
                }}
              />
              <Legend />
              <Bar dataKey="desktop" fill="hsl(var(--chart-1))" />
              <Bar dataKey="mobile" fill="hsl(var(--chart-2))" />
            </BarChart>
          </ResponsiveContainer>
        </div>

        <div className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
          <h2 className="text-lg font-semibold mb-4">Traffic sources</h2>
          <ResponsiveContainer width="100%" height={300}>
            <PieChart>
              <Pie
                data={sources}
                cx="50%"
                cy="50%"
                outerRadius={100}
                dataKey="value"
                label={({ name, percent }) =>
                  `${name} ${((percent ?? 0) * 100).toFixed(0)}%`
                }
              >
                {sources.map((_, i) => (
                  <Cell key={i} fill={COLORS[i % COLORS.length] ?? 'hsl(var(--chart-1))'} />
                ))}
              </Pie>
              <Tooltip
                contentStyle={{
                  background: 'hsl(var(--popover))',
                  border: '1px solid hsl(var(--border))',
                  borderRadius: 6,
                  color: 'hsl(var(--popover-foreground))',
                }}
              />
            </PieChart>
          </ResponsiveContainer>
        </div>
      </div>
    </div>
  )
}
