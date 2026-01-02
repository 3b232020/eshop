<x-layouts.app title="我的訂單">
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h2 class="text-xl font-bold mb-4"> 我的訂單列表</h2>

                    <ul>
                        @foreach ($orders as $order)
                            <li class="mb-4 p-4 border border-gray-200 rounded-lg">
                                <div class="font-bold text-lg text-blue-600">
                                    訂單編號：{{ $order->id }}
                                </div>
                                
                                <div class="text-gray-500">
                                    下訂時間：{{ $order->created_at }}
                                </div>
                            </li>
                        @endforeach
                    </ul>

                </div>
            </div>
        </div>
    </div>
</x-layouts.app>