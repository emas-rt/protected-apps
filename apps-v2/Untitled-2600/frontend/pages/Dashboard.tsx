import { useMemo } from 'react'
import { TrendingUp, Users, DollarSign, ShoppingCart } from 'lucide-react'
import {
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
} from 'recharts'

export default function Dashboard() {
  const data = useMemo(
    () =>
      Array.from({ length: 12 }).map((_, i) => ({
        month: new Date(2024, i, 1).toLocaleString('en', { month: 'short' }),
        revenue: Math.round(2000 + Math.random() * 5000 + i * 400),
        orders: Math.round(50 + Math.random() * 150 + i * 10),
      })),
    [],
  )

  return (
    <div className="max-w-6xl mx-auto">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-foreground">Dashboard</h1>
        <p className="text-muted-foreground">Overview of your key metrics this year.</p>
      </header>

      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4 mb-8">
        <Kpi icon={<DollarSign className="w-5 h-5" />} label="Revenue" value="$48,320" delta="+12.4%" />
        <Kpi icon={<ShoppingCart className="w-5 h-5" />} label="Orders" value="1,284" delta="+4.1%" />
        <Kpi icon={<Users className="w-5 h-5" />} label="Customers" value="392" delta="+8.7%" />
        <Kpi icon={<TrendingUp className="w-5 h-5" />} label="Conversion" value="3.2%" delta="+0.4%" />
      </div>

      <div className="p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
        <h2 className="text-lg font-semibold mb-4">Revenue over time</h2>
        <ResponsiveContainer width="100%" height={320}>
          <AreaChart data={data}>
            <defs>
              <linearGradient id="revFill" x1="0" y1="0" x2="0" y2="1">
                <stop offset="5%" stopColor="hsl(var(--chart-1))" stopOpacity={0.4} />
                <stop offset="95%" stopColor="hsl(var(--chart-1))" stopOpacity={0} />
              </linearGradient>
            </defs>
            <CartesianGrid strokeDasharray="3 3" stroke="hsl(var(--border))" />
            <XAxis dataKey="month" stroke="hsl(var(--muted-foreground))" />
            <YAxis stroke="hsl(var(--muted-foreground))" />
            <Tooltip
              contentStyle={{
                background: 'hsl(var(--popover))',
                border: '1px solid hsl(var(--border))',
                borderRadius: 6,
                color: 'hsl(var(--popover-foreground))',
              }}
            />
            <Area
              type="monotone"
              dataKey="revenue"
              stroke="hsl(var(--chart-1))"
              strokeWidth={2}
              fill="url(#revFill)"
            />
          </AreaChart>
        </ResponsiveContainer>
      </div>
    </div>
  )
}

function Kpi({
  icon,
  label,
  value,
  delta,
}: {
  icon: React.ReactNode
  label: string
  value: string
  delta: string
}) {
  return (
    <div className="p-5 bg-card text-card-foreground border rounded-lg shadow-sm">
      <div className="flex items-center justify-between text-muted-foreground mb-2">
        <span className="text-sm">{label}</span>
        {icon}
      </div>
      <div className="text-2xl font-semibold">{value}</div>
      <div className="text-xs text-muted-foreground mt-1">{delta} vs last period</div>
    </div>
  )
}
