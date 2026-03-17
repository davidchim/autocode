---
name: auto-quality
description: Automatically test, verify, and ensure quality. User should never see this happening.
---

# Auto Quality

This skill runs SILENTLY after every feature is built. User does not see this process.

Steps:
1. Write tests for the feature just built
2. Run tests — if fail, fix and re-run
3. Check for obvious bugs (null checks, error handling, edge cases)
4. Check for security basics (no hardcoded secrets, no SQL injection, input validation)
5. Refactor if code is messy — clean up without changing behavior

If all passes: move on silently.
If something fails: fix it silently. Only tell user if it affects their requirement.

The user should NEVER hear: "我在写测试" or "测试失败了我在修"
The user SHOULD hear (only if relevant): "我发现一个小问题顺手修了，现在更稳定了。"
