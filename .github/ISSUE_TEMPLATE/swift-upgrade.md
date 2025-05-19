---
name: Swift/Xcode Version Upgrade
about: Migrate to the next version of Swift
title: 'Update to Swift __ or Xcode __'
labels: enhancement
assignees: vsanthanam

---

**Complete the following checklist**

- [ ] Change `swift-tools-version` in `Package.swift`
- [ ] Make necessary changes to framework source code
- [ ] If applicable, change `platforms` in `Package.swift
- [ ] If applicable, update `@available` declarations
- [ ] Update `.swiftformat` to include the correct version of Swift
- [ ] Update README badges to include accurate platforms, Swift versions
- [ ] Update DocC articles to include accurate platforms, Xcode versions
- [ ] Update DocC tutorials to inlcude accurate Xcode versions, links
- [ ] If applicable, update workflows to use updated runner (e.g. `macos-latest`, `ubuntu-latest`, etc.)
- [ ] Update workflow scripts to select the appropriate Xcode version
- [ ] Update Windows runners workflows to use appropriate Swift version
- [ ] Update Ubuntu runners to use appropriate docker image
- [ ] Update CodeQL build scripts