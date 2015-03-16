use strict;
use warnings;
use ExtUtils::MakeMaker;

unless ($^O eq "MSWin32" || $^O eq "cygwin") {
    die "OS unsupported\n";
}

my %param = (
    NAME         => 'Win32::EventLog',
    VERSION_FROM => 'EventLog.pm',
    CCFLAGS      => '-D_WIN32_WINNT=0x0600',
    LIBS         => ['-lwevtapi'],
);
$param{NO_META} = 1 if eval "$ExtUtils::MakeMaker::VERSION" >= 6.10_03;
WriteMakefile(%param);
