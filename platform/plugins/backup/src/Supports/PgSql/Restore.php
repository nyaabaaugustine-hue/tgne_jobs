<?php

namespace Botble\Backup\Supports\PgSql;

use Illuminate\Support\Facades\DB;
use Symfony\Component\Process\Process;
use Throwable;

class Restore
{
    public function restore(string $file): bool
    {
        $config = DB::getConfig();

        $pgRestorePath = rtrim(config('plugins.backup.general.pgsql.execute_path'), '/');

        $command = 'PGPASSWORD="%s" %s --username="%s" --host="%s" --port="%s" --dbname="%s" "%s"';

        $sql = sprintf(
            $command,
            $config['password'],
            $pgRestorePath . 'pg_restore',
            $config['username'],
            $config['host'],
            $config['port'],
            $config['database'],
            $file
        );

        try {
            DB::getSchemaBuilder()->dropAllTables();
            Process::fromShellCommandline($sql)->mustRun();
        } catch (Throwable $throwable) {
            // Removed dangerous system() call to prevent RCE
            throw $throwable;
        }

        return false;
    }
}
