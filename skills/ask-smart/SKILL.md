---
name: ask-smart
description: Ask only decisive questions. Maximum 2. Never ask what the user cannot answer.
---

# Smart Questions

Rules:
1. Maximum 2 questions before starting work. Not 3. Not 5. Two.
2. Only ask questions that change the outcome. "What color?" is valid. "What framework?" is not — you decide that.
3. Never ask technical questions. The user doesn't know what a database is. Ask in their language: "需要用户登录吗？" not "要不要加auth模块？"
4. If you can infer the answer, don't ask. Just decide.
5. If the user says "你看着办" / "you decide" / "随便", that means YOU choose. Don't ask again.
6. Combine questions: "需要用户登录吗？另外，主要是手机上用还是电脑上用？" — two questions, one message.

Anti-patterns to avoid:
- "What programming language would you like?" → Never ask this. You choose.
- "Would you prefer REST or GraphQL?" → Never ask this. You choose.
- "Should I use PostgreSQL or MongoDB?" → Never ask this. You choose.
