<x-layouts.app title="訂單詳情">
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    
                    <h2 class="text-xl font-bold mb-4 border-b pb-2">
                        📄 訂單編號：{{ $order->id }}
                    </h2>
                    <p class="text-gray-500 mb-6">
                        下訂時間：{{ $order->created_at }}
                    </p>

                    <h3 class="text-lg font-semibold mb-3">🛒 訂購商品明細：</h3>

                    <ul class="list-disc pl-5">
                        @foreach ($order->orderItems as $item)
                            <li class="mb-2">
                                <span class="font-bold text-lg">
                                    {{ $item->product->name }}
                                </span>
                                
                                <span class="text-gray-600 ml-2">
                                    (單價: ${{ $item->product->price }} x 數量: {{ $item->quantity }})
                                </span>
                            </li>
                        @endforeach
                    </ul>

                    <div class="mt-8">
                        <a href="{{ route('orders.index') }}" class="text-blue-500 hover:underline">
                            &larr; 返回訂單列表
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</x-layouts.app>