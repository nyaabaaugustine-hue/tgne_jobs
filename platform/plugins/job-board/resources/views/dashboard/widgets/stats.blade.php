@php
    $totalJobs = \Botble\JobBoard\Models\Job::count();
    $activeJobs = \Botble\JobBoard\Models\Job::where('status', 'published')->count();
    $totalCompanies = \Botble\JobBoard\Models\Company::count();
    $totalApplications = \Botble\JobBoard\Models\JobApplication::count();
    $totalAccounts = \Botble\JobBoard\Models\Account::count();
    $pendingApplications = \Botble\JobBoard\Models\JobApplication::where('status', 'pending')->count();
@endphp

<div class="row">
    <div class="col-md-6 col-sm-6">
        <div class="dashboard-stat dashboard-stat-v2 dashboard-stat-round">
            <div class="visual">
                <i class="ti ti-briefcase text-success"></i>
            </div>
            <div class="details">
                <div class="number">
                    <span data-counter="counterup" data-value="{{ $totalJobs }}">{{ $totalJobs }}</span>
                </div>
                <div class="desc">{{ trans('plugins/job-board::job.jobs') }}</div>
            </div>
            <a class="more" href="{{ route('jobs.index') }}">
                {{ trans('plugins/job-board::job.view_all') }} <i class="m-icon-swapright m-icon-white"></i>
            </a>
        </div>
    </div>

    <div class="col-md-6 col-sm-6">
        <div class="dashboard-stat dashboard-stat-v2 dashboard-stat-round">
            <div class="visual">
                <i class="ti ti-building text-info"></i>
            </div>
            <div class="details">
                <div class="number">
                    <span data-counter="counterup" data-value="{{ $totalCompanies }}">{{ $totalCompanies }}</span>
                </div>
                <div class="desc">{{ trans('plugins/job-board::company.companies') }}</div>
            </div>
            <a class="more" href="{{ route('companies.index') }}">
                {{ trans('plugins/job-board::company.view_all') }} <i class="m-icon-swapright m-icon-white"></i>
            </a>
        </div>
    </div>

    <div class="col-md-6 col-sm-6">
        <div class="dashboard-stat dashboard-stat-v2 dashboard-stat-round">
            <div class="visual">
                <i class="ti ti-file-check text-warning"></i>
            </div>
            <div class="details">
                <div class="number">
                    <span data-counter="counterup" data-value="{{ $totalApplications }}">{{ $totalApplications }}</span>
                </div>
                <div class="desc">{{ trans('plugins/job-board::job-application.applications') }}</div>
            </div>
            <a class="more" href="{{ route('job-applications.index') }}">
                {{ trans('plugins/job-board::job-application.view_all') }} <i class="m-icon-swapright m-icon-white"></i>
            </a>
        </div>
    </div>

    <div class="col-md-6 col-sm-6">
        <div class="dashboard-stat dashboard-stat-v2 dashboard-stat-round">
            <div class="visual">
                <i class="ti ti-users text-primary"></i>
            </div>
            <div class="details">
                <div class="number">
                    <span data-counter="counterup" data-value="{{ $totalAccounts }}">{{ $totalAccounts }}</span>
                </div>
                <div class="desc">{{ trans('plugins/job-board::account.accounts') }}</div>
            </div>
            <a class="more" href="{{ route('accounts.index') }}">
                {{ trans('plugins/job-board::account.view_all') }} <i class="m-icon-swapright m-icon-white"></i>
            </a>
        </div>
    </div>
</div>

@if($pendingApplications > 0)
<div class="row">
    <div class="col-md-12">
        <div class="alert alert-info">
            <i class="ti ti-info-circle"></i>
            {{ trans('plugins/job-board::dashboard.pending_applications_notice', ['count' => $pendingApplications]) }}
            <a href="{{ route('job-applications.index') }}?filter_columns[status]={{ \Botble\JobBoard\Enums\JobApplicationStatusEnum::PENDING }}" class="btn btn-sm btn-info ml-2">
                {{ trans('plugins/job-board::dashboard.view_pending') }}
            </a>
        </div>
    </div>
</div>
@endif