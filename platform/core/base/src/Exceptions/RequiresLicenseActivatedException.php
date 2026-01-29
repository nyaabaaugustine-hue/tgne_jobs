<?php

namespace Botble\Base\Exceptions;

use Symfony\Component\HttpKernel\Exception\HttpException;

class RequiresLicenseActivatedException extends HttpException
{
    public function __construct($message = 'Access denied.')
    {
        parent::__construct(403, $message);
    }
}
