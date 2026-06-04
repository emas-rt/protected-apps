import { useMemo, useState } from 'react'
import { Link } from 'react-router-dom'
import { Search, Package } from 'lucide-react'
import { Input } from '../lib/shadcn/input'

const PRODUCTS = [
  { id: '1', name: 'Aurora Lamp', category: 'Lighting', price: 89 },
  { id: '2', name: 'Nimbus Chair', category: 'Furniture', price: 249 },
  { id: '3', name: 'Echo Speaker', category: 'Electronics', price: 159 },
  { id: '4', name: 'Vista Monitor', category: 'Electronics', price: 429 },
  { id: '5', name: 'Cedar Desk', category: 'Furniture', price: 599 },
  { id: '6', name: 'Lumen Bulb', category: 'Lighting', price: 19 },
  { id: '7', name: 'Pulse Keyboard', category: 'Electronics', price: 129 },
  { id: '8', name: 'Atlas Shelf', category: 'Furniture', price: 199 },
]

export default function Products() {
  const [q, setQ] = useState('')

  const filtered = useMemo(
    () =>
      PRODUCTS.filter(
        (p) =>
          p.name.toLowerCase().includes(q.toLowerCase()) ||
          p.category.toLowerCase().includes(q.toLowerCase()),
      ),
    [q],
  )

  return (
    <div className="max-w-5xl mx-auto">
      <header className="mb-6">
        <h1 className="text-3xl font-bold text-foreground">Products</h1>
        <p className="text-muted-foreground">Browse the catalog and tap a product for details.</p>
      </header>

      <div className="relative mb-6 max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
        <Input
          placeholder="Search products..."
          value={q}
          onChange={(e) => setQ(e.target.value)}
          className="pl-9"
        />
      </div>

      <ul className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
        {filtered.map((p) => (
          <li key={p.id}>
            <Link
              to={`/products/${p.id}`}
              className="flex items-center gap-4 p-4 bg-card text-card-foreground border rounded-lg shadow-sm hover:border-primary transition-colors"
            >
              <div className="w-12 h-12 grid place-items-center rounded-md bg-muted">
                <Package className="w-6 h-6 text-muted-foreground" />
              </div>
              <div className="flex-1 min-w-0">
                <div className="font-medium truncate">{p.name}</div>
                <div className="text-xs text-muted-foreground">{p.category}</div>
              </div>
              <div className="font-semibold">${p.price}</div>
            </Link>
          </li>
        ))}
        {filtered.length === 0 && (
          <li className="col-span-full text-center text-muted-foreground py-12">
            No products match "{q}".
          </li>
        )}
      </ul>
    </div>
  )
}

export { PRODUCTS }
