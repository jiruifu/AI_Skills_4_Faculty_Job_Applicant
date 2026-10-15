# Faculty Application Skills

A collection of [Claude skills](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview) for the academic job market. Each skill is a self-contained folder with a `SKILL.md` that teaches Claude how to produce one part of a faculty application well — grounded in university career-center guidance and the structure of strong real-world examples.

## Skills

| Skill | What it does | Status |
|---|---|---|
| [`research-statement-writer`](skills/research-statement-writer/) | Draft a research statement from a CV, publications and dissertation (research-focused or teaching-focused), or tailor an existing draft to an institution type (R1, R2, PUI, regional, medical school, national lab, PhD/fellowship). | ✅ available |
| `teaching-statement-writer` | Teaching philosophy statement from teaching record, mentoring and course ideas. | 🚧 planned |
| `cover-letter-writer` | Faculty cover letter tailored to a posting and department. | 🚧 planned |
| `diversity-statement-writer` | Diversity / inclusive-excellence statement. | 🚧 planned |
| `academic-cv-builder` | Academic CV formatting and section ordering by discipline. | 🚧 planned |
| `job-talk-planner` | Outline and slide plan for the research job talk. | 🚧 planned |

Suggestions for further skills are welcome — open an issue.

## Installation

### Claude.ai / Claude desktop

Upload the `SKILL.md` of the skill you want as a custom skill under **Settings → Skills**, or paste it and ask Claude to save it as a skill.

### Claude Code

Copy the skill folder(s) you want into your skills directory:

```bash
# personal (all projects)
mkdir -p ~/.claude/skills
cp -r skills/research-statement-writer ~/.claude/skills/

# or project-level
mkdir -p .claude/skills
cp -r skills/research-statement-writer .claude/skills/
```

Then invoke a skill with its slash command (e.g. `/research-statement-writer`) or just describe the task.

## Example usage

**Draft a research statement from scratch**

> Here is my CV, my publication list and my dissertation. Write a research statement for an R1 tenure-track position in mechanical engineering, and a second version for a teaching-focused position.

**Tailor an existing draft**

> Here is my CV and my current research statement. Adapt it for a primarily-undergraduate institution — the posting is attached.

## Repository layout

```
skills/
└── <skill-name>/
    ├── SKILL.md        # required: frontmatter (name, description) + instructions
    ├── references/     # optional: longer reference material loaded on demand
    └── assets/         # optional: templates used in output
```

## Principles shared by all skills

- **No fabrication.** A skill never invents publications, grants, awards, numbers or collaborators. Anything the source material does not support becomes a `[confirm: …]` placeholder for the applicant to fill.
- **Tailor by emphasis, not by flattery.** Documents are adapted to an institution through what they emphasize, scope and name — never by addressing the committee or referring to "this position".
- **Deliver an editable document** plus a short note on the choices made and the questions that would improve the next draft.

## Contributing

Pull requests are welcome: new skills, field-specific guidance (humanities book plans, clinical/medical-school statements, non-US funding bodies), and better structure templates. Keep each `SKILL.md` under ~500 lines and explain the *why* behind each instruction rather than issuing bare rules.

## License

MIT — see [LICENSE](LICENSE).
