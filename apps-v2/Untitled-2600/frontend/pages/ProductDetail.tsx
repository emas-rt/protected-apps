import { Link, useParams } from 'react-router-dom'
import { ArrowLeft, Package } from 'lucide-react'
import { Button } from '../lib/shadcn/button'
import { PRODUCTS } from './Products'

export default function ProductDetail() {
  const { productId } = useParams<{ productId: string }>()
  const product = PRODUCTS.find((p) => p.id === productId)

  if (!product) {
    return (
      <div className="max-w-3xl mx-auto text-center py-16">
        <h1 className="text-2xl font-bold mb-2">Product not found</h1>
        <p className="text-muted-foreground mb-6">
          No product matches id "{productId}".
        </p>
        <Button asChild>
          <Link to="/products">Back to products</Link>
        </Button>
      </div>
    )
  }

  return (
    <div className="max-w-3xl mx-auto">
      <Link
        to="/products"
        className="inline-flex items-center gap-1 text-sm text-muted-foreground hover:text-foreground mb-6"
      >
        <ArrowLeft className="w-4 h-4" />
        All products
      </Link>

      <div className="grid sm:grid-cols-2 gap-8 p-6 bg-card text-card-foreground border rounded-lg shadow-sm">
        <div className="aspect-square rounded-md bg-muted grid place-items-center">
          <Package className="w-20 h-20 text-muted-foreground" />
        </div>
        <div>
          <div className="text-xs uppercase tracking-wide text-muted-foreground">
            {product.category}
          </div>
          <h1 className="text-3xl font-bold mt-1 mb-3">{product.name}</h1>
          <div className="text-2xl font-semibold mb-6">${product.price}</div>
          <p className="text-muted-foreground mb-6">
            A finely crafted item built to last. This is a demo description meant
            to show how a detail page renders content for a single record.
          </p>
          <Button>Add to cart</Button>
        </div>
      </div>
    </div>
  )
}
