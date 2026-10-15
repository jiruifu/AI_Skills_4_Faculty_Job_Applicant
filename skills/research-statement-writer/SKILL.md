---
name: "research-statement-writer"
description: "Write or tailor a faculty-application research statement from a CV, publications and dissertation. Use for any research statement, research plan/vision for a faculty, postdoc or PhD application, or when adapting a draft to an R1, R2, teaching-focused or other institution."
---

# Research Statement Writer

A research statement is a 1–2 page piece of persuasive writing (never more than 3) that lets a search committee answer four questions fast: What is this person's research story? What have they already shown they can do? What will they do in the next 2–5 years, and is it realistic here? Why does it matter? Committees read hundreds of these in days, so the document must be skimmable, concrete and free of anything that reads like filler.

This skill has two modes:

- **Mode A — Draft from scratch**: given a CV plus publications (and the dissertation when available), produce a complete statement for either a research-focused or a teaching-focused faculty position.
- **Mode B — Tailor a draft**: given a CV plus an existing draft, revise it for a specific institution type (and, when a posting or department is named, for that department).

If the user gives a CV but no publications or dissertation, ask for them once — the statement lives or dies on specific findings, and a CV alone only lists titles. If the user does not say which mode or which institution type, infer it from what they attached and say which reading you took at the top of your reply.

## Step 1 — Mine the source material

Read everything attached before writing a word. Pull out and keep a working inventory (a scratch file is fine) of:

- **Positions and training**: degrees, advisors' labs (the lab topic matters; the advisor's name will not appear in the statement), postdoc(s), current role.
- **Publications**: for each, note (a) first/corresponding author or not, (b) venue and its standing in the field, (c) the one-sentence finding, (d) the method or system built, (e) any best-paper award, citation count, press, or software adoption. Group them into 2–4 research threads. A thread is a question, not a method.
- **Dissertation**: the core argument in one sentence; what each chapter or major project contributed; what the data/system was; what is published vs still to be published.
- **Funding**: anything they were PI, co-PI or named on; fellowships; internal seed grants. Note which agencies/programs their field runs on.
- **Mentoring and teaching**: students supervised (undergrad, MS, PhD), courses taught or TA'd, outreach.
- **Collaborations, equipment and data**: labs they have worked with, instruments they can run, datasets or codebases they own. These determine what future projects are feasible.
- **Skills that cross threads**: e.g. signal processing + hardware + clinical testing. These become the "what I uniquely bring" line.

Never invent a publication, grant, award, number, collaborator or facility. Where a claim would strengthen the statement but the CV doesn't support it (e.g. a target funding program, preliminary data for a new project, a named campus center), write it as a bracketed placeholder `[confirm: ...]` and list the placeholders for the user at the end. A fabricated detail in a job document is far worse than a gap.

## Step 2 — Find the core story

Before outlining, write two things for yourself and keep them in front of you:

1. **An ABT (And–But–Therefore) statement**: the context the field agrees on (AND), the specific gap or problem (BUT), and the approach the candidate takes (THEREFORE). Example from a tutorial: "Many bacteria have 'Bce modules' which protect the cell from clinically relevant antimicrobials. However, little is known about how these modules work or what they look like. Therefore, we use cryo-EM to build 3D models of Bce proteins in action to identify how to block this resistance machinery."
2. **A one-sentence tagline** for the researcher ("I build neural interfaces that let wearable robots read intent from muscle activity in daily life"). Every section should visibly connect back to it; if a thread doesn't, reframe the thread or revise the tagline.

The story must be the candidate's, not the lab's. For team projects, state the candidate's own contribution explicitly ("I designed the controller and ran the amputee trials"). Co-authored work is "a co-authored paper in Journal X" — advisors and co-authors are never named in the statement.

## Step 3 — Choose a structure

Pick whichever makes the story easiest to follow; all of these appear in strong statements:

| Structure | When it fits | Skeleton |
|---|---|---|
| **Vision → Past → Future** (numbered sections) | One coherent line of work; research-focused positions | 1 Vision & summary (incl. a one-line summary of past and future) · 2 Past research (sub-headed by contribution) · 3 Future research (2–3 directions + funding paragraph) · References |
| **Thrust-based** | 2–3 distinct threads with their own futures; engineering/sciences | Opening paragraph (societal/national problem → vision → list of thrusts) · Thrust 1..3, each with *Objective / Motivation / Approach (what I showed) / Future tracks (what I'll do, which funders care)* · References |
| **Theme-based past, then future** | Several deployed systems or studies; HCI, applied fields | Problem-driven intro · one section per theme (past work + impact evidence) · Future directions with bold lead-ins · Conclusion |
| **Compact one-page** | Postdoc applications, or when the posting asks for ≤1 page | Interests & problem · PhD work as 2–4 bullets, each ending with its venue in parentheses · Significance paragraph · Current work and next steps |
| **Five-paragraph** | Humanities/social-science style, or a tight 1-page faculty statement | Themes & field · Dissertation (methods, framework, core argument, ~1 sentence per chapter) · Contributions & publications (and book plan if a book field) · Second project (distinct, not a continuation) · Wider impact |

Rough proportions for a faculty statement: ~25% context and past training, ~25% current/dissertation work, ~50% future plans — the committee is hiring the future. For a prompt-based form (some PhD and fellowship applications supply numbered questions with word limits), answer the prompts in order and within the limits instead of imposing a structure.

## Step 4 — Write it

**Opening paragraph.** Start with the problem, not the person: why the field or society needs this, then the gap, then the candidate's approach and a one-sentence preview of the thrusts. Bold the one sentence that states the research vision. A committee member from an unrelated subfield must be able to follow this paragraph.

**Past work.** For each thread: the question, what was built or measured, the key result with a concrete number where one exists (accuracy, effect size, participants, speed-up, users), and why it matters. Attach evidence of recognition as it arises — venue, award, citation count, adoption ("implemented in library X", "in use by Y"), press. Cite own papers with bracketed numbers to a short reference list at the end; this signals productivity without padding the prose. Distinguish *topic* (what was studied) from *contribution* (what debate or limitation it moved).

**Future work.** 2–3 directions, each with: a specific first project that can start in year one with the resources a new faculty member plausibly has; what it builds on from the past work (not a mere extension of the dissertation — the second major project should be visibly distinct); the methods; expected outputs (papers, a dataset, a tool); and a longer-horizon (5+ year) question it opens. End with a short funding paragraph naming realistic programs for the field and career stage (e.g. NSF CAREER and core programs, NIH R21/R01 or K-awards, DARPA YFA, DoD/ONR/ARL, foundations, industry) and the kinds of collaborators the work needs. Name specific institutional partners only when the fit is real.

**Student involvement.** Say who does what: which projects are PhD-scale, which are self-contained MS or undergraduate projects. This is expected everywhere and is central at teaching-focused schools.

**Closing.** One short paragraph on wider impact: the field, adjacent fields, clinical/industrial/public users. No new claims here.

**Style rules the tutorials and samples agree on:**
- Informative headings; bold the summary sentence of each section; a figure or two (a concept map of the research program, a pipeline, or a key result) if the format allows — but only real figures from the candidate's work or a schematic described in words for them to draw.
- Single-spaced, 11–12 pt, 1-inch margins, 1–2 pages (≤3). Trim rather than shrink the font.
- Minimize "I/me/my"; keep the focus on the research. Use "my group will" for future work when writing for a faculty position.
- Discipline vocabulary is fine; dense jargon is not. Write for two readers: the closest colleague and someone in a different subfield of the same department.
- Do not discuss what others have failed to do; state what this work contributes.
- Stand-alone document: do not refer to the CV, cover letter, or "this position" by name. Tailoring happens through what is emphasized and which resources and programs are mentioned, not through addressing the committee.
- Avoid phrasing copied from the abstract or cover letter; the committee reads all three.

### Research-focused vs teaching-focused variants (Mode A)

Write both from the same inventory and story; they differ in emphasis, not in honesty.

**Research-focused (R1/R2, research institutes, medical schools):** full-length, thrust- or section-based; lead with publications, grants and metrics; future plans sized for a lab with PhD students and external funding within the tenure clock; explicit funding paragraph; equipment and collaborator needs stated.

**Teaching-focused (PUIs, liberal-arts colleges, regional comprehensives, teaching-track lines):** usually shorter (1–1.5 pages). Same story, but future projects are scoped so undergraduates (or MS students) can own a piece in a summer or a semester, with modest equipment and startup; name undergraduate-friendly funding (NSF RUI/ROA, internal seed grants, NIH R15/AREA, foundation awards); close with a paragraph on how the research feeds courses, capstones and labs, and how students have been or will be co-authors and conference presenters. Publication pace should be stated realistically. Cut the research-metric density that signals "I will leave for an R1".

## Mode B — Tailoring an existing draft

1. **Classify the target.** Ask or infer: R1 / R2 / primarily-undergraduate or liberal-arts / regional comprehensive / medical school or soft-money / national lab or industry research / international (note local funding bodies, e.g. ERC, UKRI, NSFC, JSPS) / PhD or fellowship application. If a posting or department URL is given, look it up: faculty and their topics, research centers, core facilities, degree programs offered (PhD vs MS vs undergrad only), teaching load if stated.
2. **Diagnose the draft against the Step 4 rules** before editing. Common faults: opens with biography instead of a problem; past work listed without results or significance; future work is "more of the dissertation"; no funding or student plan; a project that needs equipment the target does not have; advisor named; over 2 pages; jargon-dense opening; refers to "this position".
3. **Re-weight for the institution type** using this matrix:

| Target | Emphasize | Scope of proposed work | Students & teaching | Funding named |
|---|---|---|---|---|
| R1 | Vision, novelty, publication record, independence from advisor | Lab-scale, multi-year, PhD-led; first grant in years 1–2 | PhD mentoring; teaching mentioned briefly | NSF/NIH/DoD/DOE/industry; CAREER/YFA |
| R2 / rising research | Same as R1 but note feasibility with smaller startup and mixed MS/PhD | Mid-scale; one external grant plus internal seed | MS and PhD; some undergrad | Core programs, R15/R21, state and foundation |
| PUI / liberal arts | Student-accessible questions, teaching–research link, sustained modest productivity | Self-contained projects an undergrad can finish; low equipment needs | Undergrads as co-authors; course modules | NSF RUI/ROA, R15/AREA, Cottrell, internal |
| Regional comprehensive / teaching-track | Service to local or applied problems, MS projects, realistic pace | Applied, partnership-driven | MS theses, capstones, community partners | State, SBIR partners, foundation, education grants |
| Medical school / soft money | Grant trajectory, clinical relevance, preliminary data, salary coverage plan | Aims that map onto an R01-style plan | Trainees, clinical collaborators | NIH K/R, DoD CDMRP, foundations |
| National lab / industry research | Mission alignment, deliverables, team science | Milestones and prototypes | Interns, cross-team collaboration | Lab programs, agency calls |
| PhD / fellowship application | Why this topic, state of the art (≤5 refs), proposed approach, suitability | One well-defined project | n/a | Mention fellowship fit if relevant |

4. **Rewrite with tracked intent.** Keep the candidate's voice and facts; change framing, ordering, emphasis and examples. Add or remove the funding, student and teaching paragraphs as the matrix calls for. Replace any resource the target lacks with one it has or with a named collaboration. Keep to the length the posting asks for.
5. **Report the changes** in a short list: what was re-weighted and why, anything cut, and placeholders the user must confirm.

## Step 5 — Check before delivering

Run this checklist and fix what fails:

- Vision stated in one bold sentence in the first paragraph; a reader outside the subfield gets it.
- Every past-work paragraph has a result and a reason it matters; the candidate's own contribution is clear.
- 2–3 future directions, each with a concrete first project, methods, outputs and a longer horizon; at least one is clearly not a dissertation extension.
- Feasible at the target: equipment, students, startup, timeline.
- Funding programs named and appropriate to field and institution type; student involvement described.
- No advisor or co-author names; no "this position"; no reference to the CV; minimal "I".
- Length and formatting within the posting's limits; headings and bold summaries present; references list contains only the candidate's own work (plus at most a few framing citations).
- Every number, venue, award and collaborator traces to the CV or publications; anything else is a `[confirm: ...]` placeholder.

## Output

Deliver the statement as an editable document (a Word file via the docx skill when available, otherwise Markdown), formatted single-spaced with headings, bold lead sentences and a numbered self-citation list. Below the document, in the reply, give: the ABT and tagline used, the structure chosen and why, the list of `[confirm: ...]` placeholders, and 3–5 questions whose answers would most improve the next draft (preliminary data, target programs, specific collaborators, which thread the user wants to lead with). When producing both a research-focused and a teaching-focused version, deliver them as two files and summarize the differences in a few lines.