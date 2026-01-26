    </main>
    
    <!-- Newsletter Section -->
    @if (is_plugin_active('newsletter'))
        <section class="section-box mt-50 mb-20">
            <div class="container">
                <div class="box-newsletter" style="background-color: #f8f9fa; padding: 40px; border-radius: 10px;">
                    <div class="row align-items-center">
                        <div class="col-lg-12 text-center">
                            <h2 class="text-md-newsletter">
                                {{ theme_option('site_title', 'JobBox - Laravel Job Board Script') }}
                            </h2>
                            <p class="font-lg color-text-paragraph mt-20">New Things Will Always<br>Update Regularly</p>
                            <div class="box-form-newsletter mt-40">
                                <form class="form-newsletter subscribe-form newsletter-form" method="POST" action="{{ route('public.newsletter.subscribe') }}">
                                    @csrf
                                    <div class="input-group d-flex">
                                        <input type="email" class="input-newsletter form-control" name="email" placeholder="Enter Your Email" required>
                                        <button type="submit" class="btn btn-default font-heading icon-send-letter">Subscribe</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    
    <!-- Main Footer -->
    <footer class="footer mt-50">
        <div class="container">
            <div class="row">
                <!-- Description Section -->
                <div class="col-lg-4 mb-4">
                    <h3>{{ theme_option('site_title', 'JobBox - Laravel Job Board Script') }}</h3>
                    <p class="color-text-paragraph">JobBox is the heart of the design community and the best resource to discover and connect with designers and jobs worldwide.</p>
                    
                    <!-- Social Links -->
                    <div class="footer-social mt-3">
                        @php
                            $socialLinks = json_decode(theme_option('social_links', '[]'), true);
                        @endphp
                        @foreach($socialLinks as $social)
                            <a href="{{ $social['social-url'] ?? '#' }}" class="mr-3">
                                <img src="{{ RvMedia::getImageUrl($social['social-icon'] ?? '') }}" alt="{{ $social['social-name'] ?? '' }}" style="width: 24px; height: 24px;">
                            </a>
                        @endforeach
                    </div>
                </div>
                
                <!-- Resources Menu -->
                <div class="col-lg-2 mb-4">
                    <h5>Resources</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="color-text-paragraph">About Us</a></li>
                        <li><a href="#" class="color-text-paragraph">Our Team</a></li>
                        <li><a href="#" class="color-text-paragraph">Products</a></li>
                        <li><a href="#" class="color-text-paragraph">Contact</a></li>
                    </ul>
                </div>
                
                <!-- Community Menu -->
                <div class="col-lg-2 mb-4">
                    <h5>Community</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="color-text-paragraph">Feature</a></li>
                        <li><a href="#" class="color-text-paragraph">Pricing</a></li>
                        <li><a href="#" class="color-text-paragraph">Credit</a></li>
                        <li><a href="#" class="color-text-paragraph">FAQ</a></li>
                    </ul>
                </div>
                
                <!-- Quick Links Menu -->
                <div class="col-lg-2 mb-4">
                    <h5>Quick links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="color-text-paragraph">iOS</a></li>
                        <li><a href="#" class="color-text-paragraph">Android</a></li>
                        <li><a href="#" class="color-text-paragraph">Microsoft</a></li>
                        <li><a href="#" class="color-text-paragraph">Desktop</a></li>
                    </ul>
                </div>
                
                <!-- More Menu -->
                <div class="col-lg-2 mb-4">
                    <h5>More</h5>
                    <ul class="list-unstyled">
                        <li><a href="/cookie-policy" class="color-text-paragraph">Cookie Policy</a></li>
                        <li><a href="#" class="color-text-paragraph">Terms</a></li>
                        <li><a href="#" class="color-text-paragraph">FAQ</a></li>
                        <li><a href="#" class="color-text-paragraph">Download App</a></li>
                        <li><a href="#" class="color-text-paragraph">App Store</a></li>
                        <li><a href="#" class="color-text-paragraph">Google Play</a></li>
                    </ul>
                </div>
            </div>
            <!-- Footer Bottom -->
            <div class="footer-bottom mt-50 pt-4 border-top">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <span class="font-xs color-text-paragraph">
                            {!! BaseHelper::clean(theme_option('copyright', '©2024 Archi Elite JSC. All right reserved.')) !!}
                        </span>
                    </div>
                    <div class="col-md-6 text-md-end text-start mt-3 mt-md-0">
                        <div class="d-inline-block mr-3">
                            <span class="font-xs color-text-paragraph">English</span>
                        </div>
                        <div class="d-inline-block">
                            <span class="font-xs color-text-paragraph">USD</span>
                        </div>
                    </div>
                </div>
                
                <!-- Cookie Consent -->
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="cookie-consent-banner bg-light p-3 rounded d-flex justify-content-between align-items-center">
                            <div>
                                <p class="mb-0 font-sm">{!! BaseHelper::clean(theme_option('cookie_consent_message', 'Your experience on this site will be improved by allowing cookies')) !!}</p>
                                <a href="{{ theme_option('cookie_consent_learn_more_url', '/cookie-policy') }}" class="font-xs">{!! BaseHelper::clean(theme_option('cookie_consent_learn_more_text', 'Cookie Policy')) !!}</a>
                            </div>
                            <div>
                                <button class="btn btn-sm btn-outline-secondary mr-2" onclick="rejectCookies()">Reject</button>
                                <button class="btn btn-sm btn-primary" onclick="acceptCookies()">Accept cookies</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    @if (is_plugin_active('ads'))
        {!! apply_filters('ads_render', null, 'footer_after', ['class' => 'my-2 text-center']) !!}
    @endif
    <script>
        @if (is_plugin_active('job-board'))
            window.currencies = {!! json_encode(get_currencies_json()) !!};
        @endif

        window.alertTranslations = {
            'success': "{{ __('Success') }}",
            'errors': "{{ __('Errors') }}"
        }
    </script>

    {!! Theme::footer() !!}

    @if (session()->has('status') || session()->has('success_msg') || session()->has('error_msg') || (isset($errors) && $errors->count() > 0) || isset($error_msg))
        <script type="text/javascript">
            'use strict';
            window.onload = function () {
                @if (session()->has('success_msg'))
                window.showAlert('alert-success', "{{ __('Success') }}", "{!! addslashes(session('success_msg')) !!}");
                @endif
                @if (session()->has('status'))
                window.showAlert('alert-success', "{{ __('Success') }}", "{!! addslashes(session('status')) !!}");
                @endif
                @if (session()->has('error_msg'))
                window.showAlert('alert-danger', "{{ __('Errors') }}", "{!! addslashes(session('error_msg')) !!}");
                @endif
                @if (isset($error_msg))
                window.showAlert('alert-danger', "{{ __('Errors') }}", "{!! addslashes($error_msg) !!}");
                @endif
                @if (isset($errors))
                @foreach ($errors->all() as $error)
                window.showAlert('alert-danger', "{{ __('Errors') }}", "{!! addslashes($error) !!}");
                @endforeach
                @endif
            };
        </script>
    @endif

    @if(theme_option('scroll_to_top', 'yes') === 'yes')
        <script>
            'use strict';
            $(function() {
                $.scrollUp({
                    scrollText: '<i class="fi-rr-arrow-small-up"></i>',
                    easingType: "linear",
                    scrollSpeed: 900,
                    animation: "fade"
                })
            });
        </script>
    @endif
</body>
</html>
