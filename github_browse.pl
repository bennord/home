use strict;
use warnings;

# SYNOPSIS
#   openurl <url>
# DESCRIPTION
#   Opens the specified URL in the system's default browser.
# COMPATIBILITY
#   OSX, Windows (including MSYS, Git Bash, and Cygwin), as well as Freedesktop-compliant
#   OSs, which includes many Linux distros (e.g., Ubuntu), PC-BSD, OpenSolaris...
sub openurl {
  my $url = shift;
  my $platform = $^O;
  my $cmd;
  if    ($platform eq 'darwin')  { $cmd = "open \"$url\"";       }  # OS X
  elsif ($platform eq 'MSWin32' or $platform eq 'msys') { $cmd = "start \"\" \"$url\""; } # Windows native or MSYS / Git Bash
  elsif ($platform eq 'cygwin')  { $cmd = "cmd.exe /c start \"\" \"$url \""; } # Cygwin; !! Note the required trailing space.
  else { $cmd = "xdg-open \"$url\""; }  # assume a Freedesktop-compliant OS, which includes many Linux distros, PC-BSD, OpenSolaris, ...
  if (system($cmd) != 0) {
    die "Cannot locate or failed to open default browser; please open '$url' manually.";
  }
}

my $remote = defined $ARGV[0] ? quotemeta($ARGV[0]) : "origin";

$_ = `git remote -v`;
/^(${remote})\s+\S*github\.com[\:\/](\S+)\.git\s+\(push\)/m;

if ($2) {
    print("Opening remote:$1 at url:https:\/\/github.com\/$2\n");
    openurl("https://github.com/$2");
} else {
    print("No github remote exists with the name \"$remote\"\n"); 
}

