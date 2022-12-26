<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Transaction extends Model
{
    protected $guarded = [''];

    const TYPE_TRANSFER = 1;
    const TYPE_ONLINE   = 2;

    const STATUS_DEFAULT = 1;
    const STATUS_PROCESS = 2;
    const STATUS_SUCCESS = 3;
    const STATUS_CANCEL = -1;

    protected $status = [
        '1' => [
            'class' => 'default',
            'name'  => 'Tiếp nhận'
        ],
        '2' => [
            'class' => 'info',
            'name'  => 'Đang vận chuyển'
        ],
        '3' => [
            'class' => 'success',
            'name'  => 'Hoàn thành'
        ],
        '-1' => [
            'class' => 'danger',
            'name'  => 'Đã Huỷ'
        ],
    ];

    protected $type = [
    	self::TYPE_TRANSFER => [
    		'name' => 'Thanh toán sau',
			'class' => 'default'
		],
		self::TYPE_ONLINE => [
			'name' => 'Thanh toán qua ví',
			'class' => 'success'
		],
	];

    public function getStatus()
    {
        return Arr::get($this->status, $this->tst_status,"[N\A]");
    }

	public function getType()
	{
		return Arr::get($this->type, $this->tst_type,"[N\A]");
	}

    public function user()
    {
        return $this->belongsTo(User::class,'tst_user_id','id');
    }

	public function admin()
	{
		return $this->belongsTo(Admin::class,'tst_admin_id','id');
	}
}
