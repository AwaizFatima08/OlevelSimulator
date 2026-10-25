// Question Simulator: topic table search and question filters. No tracking, no storage beyond this page.
document.addEventListener("DOMContentLoaded", () => {
  // Topic search on subject pages.
  document.querySelectorAll("[data-filter-table]").forEach((input) => {
    const rows = document.querySelectorAll(`#${input.dataset.filterTable} tbody tr`);
    input.addEventListener("input", () => {
      const q = input.value.trim().toLowerCase();
      rows.forEach((r) => { r.hidden = q !== "" && !r.textContent.toLowerCase().includes(q); });
    });
  });

  // Year chips and paper select on topic pages.
  const filters = document.querySelector("[data-filters]");
  if (!filters) return;
  const chips = filters.querySelectorAll("[data-year-chip]");
  const paperSelect = filters.querySelector("[data-paper-select]");
  const groups = document.querySelectorAll("[data-year-group]");
  const empty = document.querySelector("#by-year .empty");
  let year = "all";

  const apply = () => {
    const paper = paperSelect ? paperSelect.value : "all";
    let shown = 0;
    groups.forEach((g) => {
      let inGroup = 0;
      g.querySelectorAll(".q").forEach((q) => {
        const ok = (year === "all" || q.dataset.year === year) && (paper === "all" || q.dataset.paper === paper);
        q.hidden = !ok;
        if (ok) inGroup++;
      });
      g.hidden = inGroup === 0;
      shown += inGroup;
    });
    if (empty) empty.hidden = shown > 0;
  };

  chips.forEach((chip) => chip.addEventListener("click", () => {
    year = chip.dataset.yearChip;
    chips.forEach((c) => c.setAttribute("aria-pressed", String(c === chip)));
    apply();
  }));
  if (paperSelect) paperSelect.addEventListener("change", apply);

  // A link from "Similar questions" must land on a visible question, so clear the filters first.
  document.querySelectorAll('.similar a[href^="#"]').forEach((a) => a.addEventListener("click", () => {
    year = "all";
    chips.forEach((c) => c.setAttribute("aria-pressed", String(c.dataset.yearChip === "all")));
    if (paperSelect) paperSelect.value = "all";
    apply();
  }));
});

// Practice multiple-choice: tap an option to check it; the explanation opens with "Show answer".
document.querySelectorAll(".mcq").forEach((box) => {
  const result = box.nextElementSibling;
  box.addEventListener("click", (e) => {
    const btn = e.target.closest(".opt");
    if (!btn || box.dataset.done) return;
    box.dataset.done = "1";
    const right = btn.dataset.k === box.dataset.answer;
    box.querySelectorAll(".opt").forEach((o) => {
      o.disabled = true;
      if (o.dataset.k === box.dataset.answer) o.classList.add("right");
    });
    if (!right) btn.classList.add("wrong");
    result.hidden = false;
    result.textContent = right ? "Correct!" : `Not quite: the answer is ${box.dataset.answer}.`;
    result.className = "mcq-result " + (right ? "ok" : "no");
    const details = box.closest(".pq")?.querySelector(".pq-ans");
    if (details) details.open = true;
  });
});
