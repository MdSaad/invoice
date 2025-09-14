<?php

namespace App\Http\Controllers;

use App\Http\Resources\MenuResource;
use App\Models\Setting;
use App\Traits\GeneratesMenuTrait;
use Illuminate\Http\Request;

class TestController extends Controller
{
    use GeneratesMenuTrait;
    public function index()
    {
         $main_menu = getMenuByLocation('Sidebar');
         return MenuResource::collection($main_menu);
         return getMenuByLocation('Topbar');
        $key = 'main_menu';
        $user = auth()->user();
        $menu = \Menu::get($key);
        $items = $menu ? $menu->items->toArray() : [];
        $main_menu = $this->generateMenu('main_menu', $user);
        dd($items);
        return         $global_settings = Setting::getSettings([
            'api_token',
            'admin_portal_theme',
            'admin_portal_logo',
            'login_page_logo',
            'login_page_heading',
            'login_page_description',
            'admin_page_title',
            'copyright_text',
        ]);
    }
}
