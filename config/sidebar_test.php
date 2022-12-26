<?php
return [
    [
        'name'  => 'Hệ thống',
        'label' => 'true'
    ],
	[
		'name' => 'Ql video',
		'list-check' => ['video','embed'],
		'icon' => 'fa fa-edit',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'Thêm mới',
				'namespace' => 'video',
				'route' => 'test.video.create',
				'icon'  => 'fa fa-key',
				'level'  => [1,2],
			],
			[
				'name'  => 'Danh sách',
				'namespace' => 'video',
				'route' => 'test.video.index',
				'icon'  => 'fa fa-key',
				'level'  => [1,2],
			],
			[
				'name'  => 'Danh sách episode',
				'namespace' => 'embed',
				'route' => 'test.embed.index',
				'icon'  => 'fa fa-key',
				'level'  => [1,2],
			],
		]
	]
];
