function rn-clean
  watchman watch-del-all && rm -rf "$TMPDIR/react-native-packager-cache-*" && rm -rf "$TMPDIR/metro-bundler-cache-*" && rm -rf node_modules/ && yarn
end
