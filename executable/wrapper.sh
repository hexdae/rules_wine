#! /bin/sh

# Execute wine while removing unhelpful debug messages
(exec 7>&1; $1 ${@:2} 2>&1 >&7 | grep -v 'preloader\|fixme' >&2)
