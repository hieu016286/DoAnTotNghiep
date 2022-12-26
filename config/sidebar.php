<?php
return [
    [
        'name' => 'Ql sản phẩm',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Thông tin',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key',
				'level'  => [1],
            ],
            [
                'name'  => 'Danh mục',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit',
				'level'  => [1],
			],
//            [
//                'name'  => 'Từ khoá',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//            ],
            [
                'name'  => 'Sản phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
			],
			
			[
                'name'  => 'Đánh giá',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star',
				'level'  => [1],
            ],
			[
                'name'  => 'Bình luân',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star',
				'level'  => [1],
            ],
        ]
    ],
    [
        'name' => 'Quản lý bài viết',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
		'level'  => [1],
        'sub'  => [
            [
                'name'  => 'Menu',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa-newspaper-o',
				'level'  => [1],
            ],
            [
                'name'  => 'Bài viết',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa-edit',
				'level'  => [1],
            ],
        ]
    ],
	[
		'name' => 'Ql khách hàng',
		'list-check' => ['user','ncc'],
		'icon' => 'fa fa-user',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'Khách hàng',
				'route' => 'admin.user.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-user',
				'level'  => [1,2],
			],
			[
				'name'  => 'Nhà cung cấp',
				'route' => 'admin.ncc.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-users',
				'level'  => [1,2],
			]
		]
	],
//    [
//        'name' => 'Nhập hàng',
//        'list-check' => ['invoice_entered'],
//        'icon' => 'fa-plus-circle',
//        'level'  => [1,2],
//        'sub'  => [
//            [
//                'name'  => 'Danh sách',
//                'route' => 'admin.invoice_entered.index',
//                'namespace' => 'invoice_entered',
//                'icon'  => 'fa-list',
//                'level'  => [1,2],
//            ],
//        ]
//    ],
//    [
//        'name' => 'Account',
//        'list-check' => ['user','rating','comment','contact'],
//        'icon' => 'fa fa-user',
//        'sub'  => [
//            [
//                'name'  => 'User',
//                'route' => 'admin.user.index',
//                'namespace' => 'user',
//                'icon'  => 'fa fa-user'
//            ],
//            [
//                'name'  => 'Rating',
//                'namespace' => 'rating',
//                'route' => 'admin.rating.index',
//                'icon'  => 'fa fa-star'
//            ],
//            [
//                'name'  => 'Comment',
//                'namespace' => 'comment',
//                'route' => 'admin.comment.index',
//                'icon'  => 'fa fa-star'
//            ],
//            [
//                'name'  => 'Contact',
//                'namespace' => 'contact',
//                'route' => 'admin.contact',
//                'icon'  => 'fa fa-star'
//            ],
//        ]
//    ],
    [
        'name' => 'Đơn hàng',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Danh sách',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-opencart',
				'level'  => [1,2],
            ]
        ]
    ],
	[
        'name' => 'Kho',
        'list-check' => ['inventory','import','export','invoice_entered'],
        'icon' => 'fa-folder-open-o',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Nhập kho',
                'namespace' => 'import',
                'route' => 'admin.invoice_entered.index',
                'icon'  => 'fa-plus-square',
				'level'  => [1,2],
            ],
			[
				'name'  => 'Xuất kho',
				'namespace' => 'export',
				'route' => 'admin.inventory.out_of_stock',
				'icon'  => 'fa-plus-square',
				'level'  => [1,2],
			],
			[
				'name'  => 'Tồn kho',
				'namespace' => 'tonkho',
				'route' => 'admin.inventory.tonkho',
				'icon'  => 'fa-plus-square',
				'level'  => [1,2],
			]
        ]
    ],
//    [
//        'name' => 'SystemPay',
//        'list-check' => ['pay-in'],
//        'icon' => 'fa  fa-usd',
//        'sub'  => [
//            [
//                'name'  => 'Nạp tiền',
//                'route' => 'admin.system_pay_in.index',
//                'namespace' => 'pay-in',
//                'icon'  => 'fa fa-money'
//            ]
//        ]
//    ],
    [
        'name'  => 'Hệ thống',
        'label' => 'true'
    ],
	[
		'name' => 'Hệ thống',
		'list-check' => ['slide','account_admin','event','page-static','statistical'],
		'icon' => 'fa  fa-usd',
		'level'  => [1],
		'sub'  => [
			[
				'name'  => 'Ql Admin',
				'route' => 'admin.account_admin.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Ql Thông tin ảnh',
				'route' => 'admin.slide.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Ql Sự kiện',
				'route' => 'admin.event.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Ql Page tĩnh',
				'route' => 'admin.static.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			// [
			// 	'name'  => 'Thống kê',
			// 	'route' => 'admin.statistical',
			// 	'namespace' => 'pay-in',
			// 	'level'  => [1],
			// 	'icon'  => 'fa-circle-o'
			// ],
		]
	],
];
