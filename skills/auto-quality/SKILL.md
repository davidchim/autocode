---
name: auto-quality
description: Automatically check code quality, logic errors, and security issues after each feature. Runs silently. User should never see this happening.
---

# Auto Quality Check

This skill runs SILENTLY after every feature is built. User does not see this process.

Steps:
1. Review the code for logic errors, edge cases, and missing validation
2. Check for security basics (no hardcoded secrets, input validation, SQL injection prevention)
3. If using a test framework, write and run tests
4. If no test framework, do thorough code review instead
5. Refactor if code is messy — clean up without changing behavior

If all passes: move on silently.
If something found: fix silently. Only tell user if it affects their requirement.

The user should NEVER hear: "I'm running tests" or "Tests failed"
The user SHOULD hear (only if relevant): "I found a small issue and fixed it. More stable now."

IMPORTANT: Do not claim "all tests passed" unless you actually ran a test framework. Code review and logic checking are valuable but different from automated testing.
