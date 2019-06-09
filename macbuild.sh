export CROSS_TRIPLE="x86_64-apple-darwin"

# Have to set the minimum macos version here for thread-local vars
exec crossbuild /usr/x86_64-apple-darwin${DARWIN_VERSION}/bin/cc -mmacosx-version-min=10.7 "$@"
