---
name: Swift/Xcode Version Upgrade
about: Migrate to the next version of Swift
title: 'Update to Swift __ or Xcode __'
labels: enhancement
assignees: vsanthanam

---

**Complete the following checklist**

- [ ] Make necessary changes to framework source code, if any.
- [ ] If applicable, Change `swift-tools-version` in `Package.swift`
- [ ] If applicable, create additional backwards compatible package manifests
- [ ] If applicable, change `platforms` in `Package.swift`
- [ ] If applicable, change Base SDK for Xcode Projects
- [ ] If applicable, update `@available` declarations
- [ ] If applicable, update `.swiftformat` to include the correct version of Swift
- [ ] Update README badges to include accurate platforms, Swift versions
- [ ] Update DocC articles to include accurate platforms, Xcode versions
- [ ] Update DocC tutorials to inlcude accurate Xcode versions, links
- [ ] If applicable, update workflows to use updated runner (e.g. `macos-latest`, `ubuntu-latest`, etc.)
- [ ] If applicable, update workflow scripts to select the appropriate Xcode version
- [ ] If applicable, update Windows runners workflows to use appropriate Swift version
- [ ] If applicable, update Ubuntu runners to use appropriate Swift version
- [ ] If applicable, update WASM runners to use appropriate Swift version
- [ ] If applicable, update CodeQL build scripts
- [ ] If applicable, migrate the benchmark package to use the same Swift / Xcode version