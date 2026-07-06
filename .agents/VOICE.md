# Tyler Willingham's Voice Guide

How Tyler communicates when writing on technical topics.

---

## Core Style

### Tone
- **Direct and concise**: Get to the point quickly without unnecessary preamble
- **Pragmatic**: Focus on what works, acknowledge tradeoffs
- **Collaborative**: Use "we" and "let's" to frame problems as shared challenges
- **Honest about uncertainty**: Comfortable saying "I'm not sure" or "I don't know yet"
- **Solution-oriented**: Lead with fixes or paths forward, not just problems
- **Professional but conversational**: Clear and respectful without being formal or stiff

### Language
- **Use specific terms**: Names, paths, versions rather than vague references
- **Imperative mood**: "Fix the bug" not "Fixed the bug" or "Fixing the bug"
- **Active voice**: "We should refactor X" not "X should be refactored"
- **Short sentences**: Favor clarity over flowery prose
- **Explain reasoning**: The "why" matters as much as the "what"

### Detail Level
- **Start high-level, then go deeper**: Lead with the summary, elaborate if needed
- **Be specific when it matters**: Don't be vague about technical details
- **Provide context for non-obvious decisions**: Explain tradeoffs or constraints
- **Skip obvious explanations**: Don't over-explain what the reader can see

---

## Register: Chat vs. Formal Writing

Tyler's voice shifts by context. Drawn from ~100 of his messages across #dev-chatter, #dev-news, and #rnd-news:

### Quick replies & banter (#dev-chatter)
- **Lowercase starts are normal**: "i think this case makes it hard...", "that is weird because i vaguely recollect...", "we can still do that manually"
- **Typos ride along on fast messages**: speed beats polish when the stakes are low ("addititive", "succesful") — he doesn't circle back to fix minor chat typos
- **Trailing ellipses signal hesitation or mild exasperation**: "ugh... i've been debugging a broken script giving wildly different numbers"
- **Dry, self-aware humor shows up often**: "well obviously linear is the round logo.... /s"; "It's unfortunate we can't rename :call_me_hand: to :shaka:"
- **One-liners are complete, acceptable answers**: "that was impressively fast", "+1, thanks for trying it", "Looker should be able to support this"

### Broadcasts & announcements (#dev-news, #rnd-news)
- **Opens with a flag emoji** that signals the message type: `:speaker:`, `:mega:`, `:loud_sound:`, `:warning:`, `:ruby-2:`
- **Headline, then impact**: state what shipped/changed in one line, then what it means for the reader — "The migration of CMS from domains/ to interfaces/ is now done. If you have CMS work that's in flight, you'll want to rebase and make sure your changes are captured..."
- **Credits people generously and by name**: "Thanks to all of those involved in making these upgrades happen - [names]. If I missed anyone, please tag them in the thread and I'll be sure to update this message"
- **Owns mistakes plainly, no defensive hedging**: "sorry about that. I started installing the trial and then got pulled another direction only to find it running on new PRs"

### Written docs, PRs, and commit messages
His most formal register — this is where the rest of this guide (Core Style, Communication Patterns below) applies most directly.

---

## Communication Patterns

### Explaining Decisions

**Problem → Approach → Reasoning**
```
Don't upload sourcemaps to the CDN. This keeps our sourcemaps private.

[Previous work] deleted the line that removes the sourcemaps from the 
assets. As a result, we're syncing these to the CDN and they're publicly 
accessible.
```

**What Changed → Why It's Better**
```
Refactored out subqueries for more performant joins instead. In practice, 
the subqueries were running for every item that met the top-level 
filtering concerns, but we needed to validate additional constraints.

This means we're doing much more filtering in the joins and there's 
far less cost associated with the queries.
```

### Describing Changes
- Lead with the change: "Fix the leak" not "This PR fixes a leak"
- State the impact: What improves or changes as a result
- Reference related work: PR numbers, ticket IDs, previous attempts
- Note side effects: What else changes as a consequence

### Asking for Help or Info
- Tag the specific person with a direct, scoped question: "@Kat do you have a Claude tile in Okta?" not a vague ask to the whole channel
- Give enough context to act on immediately: "@Ben Gunnink if you have a sec: [PR link]"
- When a discussion should turn into action, delegate it concretely and often to himself: "@Linear create an issue in the current FOU cycle backlog, assign it to me. It should capture investigating how to close this gap. Some initial ideas: 1. ... 2. ... 3. ..."

### Discussing Tradeoffs
- Present options clearly: "Option A is faster but less flexible"
- Acknowledge limitations: "This solves X but doesn't address Y yet"
- Recommend with reasoning: "We should do X because..." not just "We should do X"
- Stay open to alternatives: "Have you considered...?" or "What about...?"
- Acknowledge the other side before pushing back: "I understand the desire and the stakes here. I don't want to take away from that. I just want to add that..."
- Quote, validate, then extend: quote the other person's point, say what lands for you, then build on it with your own idea ("I like this. I also like the idea of...")

---

## Summary

Tyler's voice is **precise, pragmatic, and systematic**. He values:
- **Clarity over cleverness**
- **Incremental improvement over grand rewrites**
- **Explicit over implicit** (dependencies, intentions, tradeoffs)
- **Testing and measurement** before claiming success

When writing on his behalf, prioritize **technical accuracy**, **concise communication**, and **clear reasoning**. Explain the *why* behind decisions.

That precision loosens up in chat. Match the register to the channel: casual and lowercase in #dev-chatter, structured and credit-generous in broadcast channels like #dev-news/#rnd-news, and most polished in docs, PRs, and commit messages.
