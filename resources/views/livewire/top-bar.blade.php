<nav
class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
id="layout-navbar"
>
<div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
    <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
      <i class="bx bx-menu bx-sm"></i>
    </a>
  </div>
  
  <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
    <!-- Search -->
    <div class="navbar-nav align-items-center">
      <div class="nav-item d-flex align-items-center">
        <i class="bx bx-search fs-4 lh-0"></i>
        <input
          type="text"
          class="form-control border-0 shadow-none"
          placeholder="Search..."
          aria-label="Search..."
        />
      </div>
    </div>
    <!-- /Search -->
  
    <ul class="navbar-nav flex-row align-items-center ms-auto">
      <!-- Place this tag where you want the button to render. -->
      <li class="nav-item lh-1 me-3">
        <a
          class="github-button"
          href="https://github.com/themeselection/sneat-html-admin-template-free"
          data-icon="octicon-star"
          data-size="large"
          data-show-count="true"
          aria-label="Star themeselection/sneat-html-admin-template-free on GitHub"
          >Star</a
        >
      </li>
  
      <!-- User -->
      <li class="nav-item navbar-dropdown dropdown-user dropdown">
        <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
          <div class="avatar avatar-online">
            <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
          </div>
        </a>
        <ul class="dropdown-menu dropdown-menu-end">
          <li>
            <a class="dropdown-item" href="#">
              <div class="d-flex">
                <div class="flex-shrink-0 me-3">
                  <div class="avatar avatar-online">
                    <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                  </div>
                </div>
                <div class="flex-grow-1">
                  <span class="fw-semibold d-block">John Doe</span>
                  <small class="text-muted">Admin</small>
                </div>
              </div>
            </a>
          </li>
          <li>
            <div class="dropdown-divider"></div>
          </li>
          <li>
            <a class="dropdown-item" href="{{ route('profile.show') }}">
              <i class="bx bx-user me-2"></i>
              <span class="align-middle">My Profile</span>
            </a>
          </li>
          <li>
            <a class="dropdown-item" href="#">
              <i class="bx bx-cog me-2"></i>
              <span class="align-middle">Settings</span>
            </a>
          </li>
          <li>
            <a class="dropdown-item" href="#">
              <span class="d-flex align-items-center align-middle">
                <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                <span class="flex-grow-1 align-middle">Billing</span>
                <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
              </span>
            </a>
          </li>
          <li>
            @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
                    <div class="shrink-0 mr-3">
                        <img class="h-10 w-10 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" />
                    </div>
                @endif
                </li>
                <li>

                @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                    <x-jet-responsive-nav-link href="{{ route('api-tokens.index') }}" :active="request()->routeIs('api-tokens.index')">
                        {{ __('API Tokens') }}
                    </x-jet-responsive-nav-link>
                @endif



                <!-- Team Management -->
                @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                    <div class="border-t border-gray-200"></div>

                    <div class="block px-4 py-2 text-xs text-gray-400">
                        {{ __('Manage Team') }}
                    </div>

                    <!-- Team Settings -->
                    <x-jet-responsive-nav-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}" :active="request()->routeIs('teams.show')">
                        {{ __('Team Settings') }}
                    </x-jet-responsive-nav-link>

                    @can('create', Laravel\Jetstream\Jetstream::newTeamModel())
                        <x-jet-responsive-nav-link href="{{ route('teams.create') }}" :active="request()->routeIs('teams.create')">
                            {{ __('Create New Team') }}
                        </x-jet-responsive-nav-link>
                    @endcan

                    <div class="border-t border-gray-200"></div>

                    <!-- Team Switcher -->
                    <div class="block px-4 py-2 text-xs text-gray-400">
                        {{ __('Switch Teams') }}
                    </div>

                    @foreach (Auth::user()->allTeams() as $team)
                        <x-jet-switchable-team :team="$team" component="jet-responsive-nav-link" />
                    @endforeach
                @endif
                </li>
                <li>
            <div class="dropdown-divider"></div>
          </li>
          <li>
                            <!-- Authentication -->
                            <form method="POST" action="{{ route('logout') }}" x-data>
                                @csrf
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                @click.prevent="$root.submit();">
                                    <i class="bx bx-power-off me-2"></i>
                                    <span class="align-middle">Log Out</span>
                            </a>
                            </form>
           
          </li>
        </ul>
      </li>
      <!--/ User -->
    </ul>
  </div>
    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex">
                <!-- Logo -->
                <div class="shrink-0 flex items-center">
                    @can('admin')
                    <x-jet-nav-link href="{{ route('admin.dashboard.index') }}" :active="request()->routeIs('admin.dashboard.index')">
                        {{ __('Admin') }}
                    </x-jet-nav-link> 
                    @endcan
                    @can('business')
                    <x-jet-nav-link href="{{ route('business.dashboard.index') }}" :active="request()->routeIs('business.dashboard.index')">
                        {{ __('Business') }}
                </x-jet-nav-link>
                    @endcan
                    @can('client')
                    <x-jet-nav-link href="{{ route('client.dashboard.index') }}" :active="request()->routeIs('client.dashboard.index')">
                        {{ __('Client') }}
                </x-jet-nav-link>
                    @endcan
                </div>
            </div>
        </div>
    </div>
</nav>
