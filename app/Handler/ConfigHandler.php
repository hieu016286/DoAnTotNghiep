<?php 

namespace App\Handler\ConfigHandler
/**
 * 
 */
class ConfigHandler
{
    public function userField()
    {
        return get_data_user('admins');
    }
}