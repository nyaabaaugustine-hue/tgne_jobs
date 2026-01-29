@php
    $manageLicense = auth()
        ->user()
        ->hasPermission('core.manage.license');
@endphp

<x-core::alert
    type="info"
    :important="false"
    @class(['alert-license small', 'vertical-wrapper' => AdminAppearance::isVerticalLayout()])
    icon=""
    @style(['display: none' => $hidden ?? true])
    data-bb-toggle="authorized-reminder"
>
    <div class="{{ AdminAppearance::getContainerWidth() }}">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                Check Applications at Jobs
            </div>

            @if ($manageLicense)
                <a
                    class="btn-close"
                    data-bs-toggle="modal"
                    data-bs-target="#quick-activation-license-modal"
                    aria-label="close"
                ></a>
            @endif
        </div>
    </div>
</x-core::alert>

@if ($manageLicense)
    @include('core/base::system.partials.license-activation-modal')
@endif
