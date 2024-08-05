<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class AuthorizedDashboardController extends Controller
{
    // Hapus konstruktor dengan middleware di sini

    public function showDashboard()
    {
        if (Auth::check() && Auth::user()->role != 'admin') {
            return redirect()->route('account.profile')->with('error', 'You are not authorized to access this page');
        }
        return view('admin.dashboard'); // Ganti dengan view yang sesuai
    }
}
