---
name: git-commits
description: Instructions on how to author git commits
---

# Git Commit Best Practices

## Commit Message Structure

1. **First Line Guidelines**
   - Limit to 50 characters or less
   - Use a gitmoji at the start to indicate commit type
   - Provide a clear, concise summary of the change
   - Capitalize the first letter
   - Do not end with a period

2. **Message Body**
   - Leave a blank line after the first line
   - Explain the motivation for the change
   - Describe how the change solves the problem
   - Use bullet points for clarity
   - Wrap lines at 72 characters

## Gitmoji Usage

Always start your commit message with an appropriate gitmoji to quickly communicate the commit's purpose:

- 🎨: Improve code structure/format
- ⚡️: Improve performance
- 🔥: Remove code or files
- 🐛: Fix a bug
- 🚑️: Critical hotfix
- ✨: Introduce new features
- 📝: Add or update documentation
- 🚀: Deploy stuff
- 💄: Update UI and style
- 🎉: Begin a project
- ✅: Add, update, or pass tests
- 🔒️: Fix security or privacy issues
- 🚧: Work in progress
- ♻️: Refactor code
- 🌐: Internationalization and localization
- 🔧: Add or update configuration
- 🧪: Add or update tests

## Example Commit Message

```
✨ Add user authentication middleware

- Implement JWT-based authentication
- Create middleware to validate user tokens
- Add error handling for unauthorized requests

Resolves #123
```

## Additional Best Practices

- Avoid generic messages like "Fix bug" or "Update code"
- Be specific about the changes and their impact
- Reference issue numbers when applicable
- Do not explain HOW the code works in the commit message
- Focus on explaining WHY the change was made
- Never add automatic Co-Authored-By or attribution lines
