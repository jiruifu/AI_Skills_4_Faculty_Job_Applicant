# AI Skills for Faculty Job Applicants

Works with **Claude Code**, **Claude.ai** and **OpenAI Codex**.

A collection of [Claude skills](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview) for the academic job market. Each skill is a self-contained folder: a `SKILL.md` that teaches Claude how to produce one part of a faculty application well, plus the **tutorials and sample documents it was learned from**, so anyone can see where the advice comes from and improve it.

The goal is a community-maintained toolkit: the more good tutorials and real, successful application documents the collection holds, the better every skill gets. See [Help make these skills better](#help-make-these-skills-better).

## Skills

| Skill | What it does | Status |
|---|---|---|
| [`research-statement-writer`](skills/research-statement-writer/) | Draft a research statement from a CV, publications and dissertation (research-focused or teaching-focused), or tailor an existing draft to an institution type (R1, R2, PUI, regional, medical school, national lab, PhD/fellowship). Learned from 4 career-center tutorials. | ✅ available |
| `teaching-statement-writer` | Teaching philosophy statement from teaching record, mentoring and course ideas. | 🚧 planned |
| `cover-letter-writer` | Faculty cover letter tailored to a posting and department. | 🚧 planned |
| `diversity-statement-writer` | Diversity / inclusive-excellence statement. | 🚧 planned |
| `academic-cv-builder` | Academic CV formatting and section ordering by discipline. | 🚧 planned |
| `job-talk-planner` | Outline and slide plan for the research job talk. | 🚧 planned |

Suggestions for further skills are welcome — open an issue.

## Installation

The skills follow the [Agent Skills](https://agentskills.io) open format (a folder with a `SKILL.md`), so the same folder works in **Claude Code**, **Claude.ai** and **OpenAI Codex** (CLI, IDE extension and ChatGPT) without changes. Each agent just looks in a different directory:

| Agent | User-level (all projects) | Project-level (this repo) | Invoke |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | `/research-statement-writer` |
| Codex | `~/.agents/skills/` | `.agents/skills/` | `$research-statement-writer` or `/skills` |

### Quick start — let the agent install it

Paste this into Claude Code or Codex and it will fetch the repo and install the skills itself:

> Install the skills from https://github.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant — clone the repo to a temp folder and run `./install.sh` (use `./install.sh claude` if you are Claude Code, `./install.sh codex` if you are Codex). Then confirm the `research-statement-writer` skill is available.

Or run one of these yourself in a terminal — no clone needed:

```bash
# with the cross-agent skills CLI (Node.js required) — works for Claude Code, Codex and ~70 other agents
npx skills add jiruifu/AI_Skills_4_Faculty_Job_Applicant -a claude-code -a codex -g -y   # user-level, both agents
npx skills add jiruifu/AI_Skills_4_Faculty_Job_Applicant -a codex -y                     # project-level, Codex only

# or with plain shell (git required)
curl -fsSL https://raw.githubusercontent.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant/main/quick-install.sh | sh              # both agents
curl -fsSL https://raw.githubusercontent.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant/main/quick-install.sh | sh -s -- codex  # Codex only
```

Start a new session afterward so the agent picks the skill up.

### Install from a clone

```bash
git clone https://github.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant.git
cd AI_Skills_4_Faculty_Job_Applicant

./install.sh                 # all skills, for both Claude Code and Codex
./install.sh codex           # Codex only
./install.sh claude          # Claude Code only
./install.sh both research-statement-writer   # just one skill
./install.sh --project codex # into ./.agents/skills of the current directory instead of ~
```

### Manual install

Copy the skill folder into the agent's directory (Windows: use Explorer or `xcopy /E`):

```bash
# Claude Code
mkdir -p ~/.claude/skills && cp -r skills/research-statement-writer ~/.claude/skills/

# Codex
mkdir -p ~/.agents/skills && cp -r skills/research-statement-writer ~/.agents/skills/
```

Restart the agent if the skill doesn't show up. In Codex you can also ask the built-in installer to fetch it: `$skill-installer install research-statement-writer from https://github.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant`.

### Use it straight from a clone

The repo ships `.claude/skills/` and `.agents/skills/` folders that link to `skills/`, so if you open this repository itself in Claude Code or Codex, every skill is already available with no install step.

### Claude.ai / Claude desktop

Upload the skill folder (or just its `SKILL.md`) as a custom skill under **Settings → Skills**, or paste the `SKILL.md` and ask Claude to save it as a skill.

## Example usage

**Draft a research statement from scratch**

> Here is my CV, my publication list and my dissertation. Write a research statement for an R1 tenure-track position in mechanical engineering, and a second version for a teaching-focused position.

**Tailor an existing draft**

> Here is my CV and my current research statement. Adapt it for a primarily-undergraduate institution — the posting is attached.

## Repository layout

```
skills/
└── <skill-name>/
    ├── SKILL.md                 # required: frontmatter (name, description) + instructions
    ├── agents/openai.yaml       # optional: Codex display name / invocation policy (ignored by Claude)
    └── references/
        ├── tutorials/           # the guides the skill was distilled from (PDF)
        └── samples/             # real documents from successful applications (+ README on how to add one)
.claude/skills/<skill-name>  -> symlink to skills/<skill-name>   (Claude Code auto-discovery)
.agents/skills/<skill-name>  -> symlink to skills/<skill-name>   (Codex auto-discovery)
install.sh                   # copies skills into ~/.claude/skills and/or ~/.agents/skills
quick-install.sh             # curl-able one-liner: clones the repo and runs install.sh
```

When adding a new skill, create it under `skills/` and add the two symlinks (`ln -s ../../skills/<name> .claude/skills/<name>` and the same under `.agents/skills/`).

## Help make these skills better

These skills are only as good as the material behind them. You are encouraged to reinforce them by contributing:

- **Better or additional tutorials** — career-center guides, handbooks, blog posts or talks on writing a research statement, teaching statement, cover letter, etc. Drop the file (PDF preferred) into the relevant skill's `references/tutorials/` folder with a descriptive name and, in the pull request, say what it adds that the existing tutorials don't.
- **Sample documents from successful applications** — a research statement (or other document) that led to an interview or an offer. Add it to the skill's `references/samples/` folder following that folder's README: PDF as submitted, named `<field>-<institution-type>-<year>`, with a short note on what position it was for. Only share documents you own or have permission to share; anonymized versions are welcome.
- **Improvements to the `SKILL.md`** — if a new tutorial or sample reveals advice the skill is missing (a field-specific convention, a structure that works, a mistake committees flag), update the instructions and cite the source in the PR. Explain the *why* behind each instruction rather than adding bare rules, and keep each `SKILL.md` under ~500 lines.
- **New skills** for other parts of the application package, built the same way: gather tutorials and samples first, distill them into a `SKILL.md`, and ship the sources alongside.

Open a pull request for any of these, or an issue if you have material but aren't sure how to add it.

## Principles shared by all skills

- **No fabrication.** A skill never invents publications, grants, awards, numbers or collaborators. Anything the source material does not support becomes a `[confirm: …]` placeholder for the applicant to fill.
- **Tailor by emphasis, not by flattery.** Documents are adapted to an institution through what they emphasize, scope and name — never by addressing the committee or referring to "this position".
- **Show the sources.** Every skill ships with the tutorials and samples it was learned from.
- **Deliver an editable document** plus a short note on the choices made and the questions that would improve the next draft.

## License

The skill instructions and repository scaffolding are released under the MIT license — see [LICENSE](LICENSE). Tutorials and sample documents in `references/` remain the property of their original authors and institutions and are included for educational use; if you are an author and would like a file removed or credited differently, open an issue.
