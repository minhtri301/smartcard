<li class="nav-header">TRANG QUẢN TRỊ</li>

<li class="nav-item">
    <a href="{{ route('admin.home') }}"
        class="nav-link {{ Request::segment(1) == 'admin' && Request::segment(2) == '' ? 'active' : null }}">
        <i class="nav-icon fas fa-tachometer-alt"></i>
        <p>
            Trang tổng quan
        </p>
    </a>
</li>

@if(Auth::user()->hasRole('Chủ sở hữu'))
<li class="nav-item">
    <a href="{{ route('roles.index') }}" class="nav-link {{ Request::segment(2) == 'roles' ? 'active' : null }}">
        <i class="nav-icon far fa-shield-alt"></i>
        <p>
            Phân quyền quản trị
        </p>
    </a>
</li> 
@endif

@can('Quản lý quản trị')
<li class="nav-item">
    <a href="{{ route('users.index') }}" class="nav-link {{ Request::segment(2) == 'users' ? 'active' : null }}">
        <i class="nav-icon fas fa-user-shield"></i>
        <p>
            Quản lý quản trị
        </p>
    </a>
</li>
@endcan

@can('Quản lý người dùng')
<li class="nav-item">
    <a href="{{ route('customer.index') }}"
        class="nav-link {{ Request::segment(2) == 'customer' ? 'active' : null }}" style="border-radius:0px !important">
        <i class="nav-icon fas fa-user"></i>
        <p>
            Quản lý người dùng
        </p>
    </a>
</li>
@endcan

@can('Quản lý nhóm người dùng')
<li class="nav-item">
    <a href="{{ route('groups.index') }}"
        class="nav-link {{ Request::segment(2) == 'groups' ? 'active' : null }}">
        <i class="nav-icon fas fa-layer-group"></i>
        <p>
            Quản lý nhóm người dùng
        </p>
    </a>
</li>
@endcan

@can('Quản lý ứng dụng')
<li class="nav-item">
    <a href="{{ route('apps.index') }}"
        class="nav-link {{ Request::segment(2) == 'apps' ? 'active' : null }}">
        <i class="nav-icon fab fa-adn fa-lg"></i>
        <p>
            Quản lý ứng dụng
        </p>
    </a>
</li>
@endcan

@can('Liên hệ')
<li class="nav-item">
    <a href="{{ route('contact.index') }}"
        class="nav-link {{ Request::segment(2) == 'contact' ? 'active' : null }}">
        <i class="nav-icon fas fa-address-book"></i>
        <?php $number = \App\Models\Contact::where('status', 0)->get()->count(); ?>
        <p>
            Liên hệ
            <span class="badge badge-pill badge-warning right">{{ $number }}</span>
        </p>
    </a>
</li>
@endcan

@can('Trang mới')
<li
    class="nav-item {{ Request::segment(2) =='page-sub' ? 'menu-open' : null }}">
    <a href="#" class="nav-link {{ Request::segment(2) =='page-sub' ? 'active' : null }}">
        <i class="nav-icon fas fa-newspaper"></i>
        <p>
            Trang mới
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="{{ route('page-sub.index') }}"
                class="nav-link {{ Request::segment(3) !== 'create' && Request::segment(2) =='page-sub' || Request::segment(3) == 'edit'  ? 'active' : null }} ">
                <i class="far fa-circle nav-icon"></i>
                <p>Danh sách</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('page-sub.create') }}"
                class="nav-link {{ Request::segment(3) == 'create' ? 'active' : null }}">
                <i class="fas fa-plus-circle nav-icon"></i>
                <p>Thêm trang</p>
            </a>
        </li>
    </ul>
</li>
@endcan

<!-- SETTING -->
@can('Cài đặt')
<li class="nav-header">CÀI ĐẶT HỆ THỐNG</li>

<li
    class="nav-item {{ Request::segment(2) == 'pages' ? 'menu-open' : null }}">
    <a href="#" class="nav-link {{ Request::segment(2) == 'pages' ? 'active' : null }}">
        <i class="nav-icon fas fa-pager"></i>
        <p>
            Giao diện
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="{{ route('pages.build', ['page'=> 'home' ]) }}"
                class="nav-link {{ Request::segment(3) == 'build' ? 'active' : null }}">
                <i class="far fa-circle nav-icon"></i>
                <p>Trang chủ</p>
            </a>
        </li>
    </ul>
</li>

<li
    class="nav-item {{ in_array(Request::segment(3), ['general', 'chat-config', 'salary']) || Request::segment(2) =='countries' ? 'menu-open' : null }}">
    <a href="#" class="nav-link {{ in_array(Request::segment(3), ['general', 'chat-config', 'salary']) || Request::segment(2) =='countries' ? 'active' : null }}">
        <i class="nav-icon fas fa-cog"></i>
        <p>
            Cài đặt và cấu hình
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="{{ route('admin.settings.general') }}"
                class="nav-link {{ Request::segment(3) == 'general' ? 'active' : null }}">
                <i class="far fa-circle nav-icon"></i>
                <p>Cài đặt chung</p>
            </a>
        </li>
    </ul>
</li>
@endcan