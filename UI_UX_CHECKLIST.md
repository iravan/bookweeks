# Book Weeks — UI/UX Audit Checklist

**Product:** Book Weeks (Flutter tutoring / session scheduler)  
**Auditor role:** Professional UI/UX designer  
**Last updated:** 2026-11-07  
**Loop status:** Complete — all 42 items audited · loop stopped

---

## How to use

| Mark | Meaning |
|------|---------|
| `[ ]` | Not audited yet |
| `[x]` | Pass |
| `[~]` | Partial / needs polish |
| `[!]` | Fail — fix recommended |
| `[>]` | In progress this loop tick |

**Progress:** `42 / 42` audited · Priority fixes tracked under [Findings & backlog](#findings--backlog)

On each loop tick: take the next `[ ]` item → audit against `lib/` → mark result → if fail is small/high-impact, fix it → update progress count.

---

## 1. Visual design system

- [!] **1.1 Color tokens** — Fail. Hard-coded `Colors.white` / `Colors.grey` / `Colors.red` / `Colors.green` appear across `main.dart`, `week_calendar.dart`, `day_tab_view.dart`, settings, and lists (~80+ hits). Theme `ColorScheme` exists but many surfaces ignore it — custom themes and any future dark mode will look broken. See F2.
- [!] **1.2 Typography scale** — Fail. Help / notification / theme settings use `textTheme`; core screens (`day_tab_view`, `week_calendar`, `students_page`, `events_list_page`, `template_management_page`) use ad-hoc `TextStyle(fontSize: 10–18)`. `ThemeService` never customizes `textTheme`. Hierarchy exists only by accident.
- [~] **1.3 Spacing rhythm** — Partial. Outer gutter is mostly `16`; empty-state circles use `24`. Card gaps mix `8` and `12`; settings/help cards use inner `20` while list tiles use `16`/`12`. No shared spacing constants — close enough visually, not systematized.
- [~] **1.4 Elevation & surfaces** — Partial. Theme cards elev `2`, session cards `1`, student cards `0`; week calendar + tab bar use custom white `BoxShadow` instead of theme surface. In every theme, `surface` == `background`, so surface contrast is weak — white cards do the real separation.
- [~] **1.5 Border radius** — Partial. Theme encodes buttons/inputs `8` and cards `12`. Practice also uses `4` (debug chip), `9` (theme swatch), `16` (dialogs/calendar/banners), `20` (banner chips) — informal language, not shared constants.
- [~] **1.6 Iconography** — Partial. Size ladder (16 / 20 / 24 / 40–48) is sensible; primary actions use theme primary. Destructive delete / dialog text use hard-coded `Colors.red`, import uses `Colors.green` — not `colorScheme.error` / success. Mix of filled vs `_outlined` icons across empty states vs app bar.
- [~] **1.7 Brand / product identity** — Partial. Default Teal + cream + coral secondary has a clear product look; app title is present in the app bar. Alternate themes (Blue/Purple/Green/…) read as stock Material palettes. No custom typeface (Material defaults only) — brand lives in color, not typography.

## 2. Theme & appearance

- [!] **2.1 Light theme quality** — Fail. White on Teal primary `#4fb7ae` ≈ **2.4:1** (fails AA even for large text); white on coral secondary ≈ 2.7:1. Body text on cream is fine (~19:1). Grey-500 hints on cream ≈ 2.4:1 fail. App bar / FAB / primary buttons have weak contrast. See F12.
- [!] **2.2 Dark mode** — Fail. `AppTheme` only builds `ColorScheme.light`; `MaterialApp` sets `theme:` only (no `darkTheme` / `themeMode`). Hard-coded whites make a dark path even harder. Deferred — see F1.
- [x] **2.3 Theme persistence** — Pass. `ThemeService` stores index under `selected_theme` via SharedPreferences; `loadTheme()` on init; `setTheme` writes immediately.
- [x] **2.4 Theme preview** — Pass. Swatches show primary→secondary gradient, selected border + checkmark; tap applies live via `themeNotifier`. (Doesn’t preview surface/background separately; label contrast on light swatches inherits F12.)
- [!] **2.5 System preference** — Fail / N/A until dark mode. No `ThemeMode.system`; app always uses the selected light palette regardless of OS appearance. Blocked by F1 / 2.2.

## 3. Navigation & information architecture

- [x] **3.1 Primary task path** — Pass. Home shows week calendar → day tabs → session list + FAB; tap session opens students. Core loop is on the first screen without hunting menus.
- [x] **3.2 App bar density** — Pass. Visible actions limited to Events + Notifications (+ debug in kDebugMode); Help / Theme / Templates / Export / Import live in overflow. Secondary stays secondary.
- [x] **3.3 Nested scaffolds** — Pass (fixed). `DayTabView` no longer nests a `Scaffold` inside `MainPage`; uses `Stack` + positioned FAB. Pushed routes (Students, Events, etc.) correctly use their own full-screen `Scaffold`.
- [x] **3.4 Back / return refresh** — Pass. Events list and Students / edit-session paths `await` push then `setState`. Theme updates via `themeNotifier` without needing home rebuild. Notification/Help don’t need list refresh.
- [x] **3.5 Deep secondary screens** — Pass. Notifications has a dedicated app-bar icon; Help, Theme, Templates (plus export/import) sit in the overflow menu — discoverable without crowding home.

## 4. Core flows (task success)

- [x] **4.1 Empty day state** — Pass. Icon + “No sessions scheduled” + “Tap the + button…” with FAB present. Added FAB `tooltip` using `tapToAddSession` for discoverability/a11y.
- [x] **4.2 Create session** — Pass. Title required validator; end-after-start SnackBar + auto-adjust on start change; template dropdown + save-as-template checkbox; loading state while templates load.
- [x] **4.3 Edit / delete session** — Pass. Edit/delete IconButtons on session cards; delete shows confirm dialog with Cancel/Delete before `removeSession`.
- [x] **4.4 Students on session** — Pass. Empty state (“No students…” + tap +) with add FAB; edit/remove on list tiles; available-students list to add existing. (Remove-from-session has no confirm — tracked under 5.4.)
- [~] **4.5 Templates** — Partial. Save-as-template is opt-in (unchecked) with subtitle; manage page in overflow. Creating a session auto-selects **last template** and fills fields — useful but can surprise if user wanted a blank form (None is available).
- [x] **4.6 Week selection** — Pass. Selected week: primary tint + border; today: ring (filled when selected); session dots under days. Distinct enough; weekend red is separate issue (F5).
- [x] **4.7 Past days** — Pass (intentional). `_getFilteredWeekDays` drops days before today for the current week in day tabs; future weeks show all days. Calendar still shows full week rows (context), tabs only actionable days.

## 5. Feedback & system status

- [x] **5.1 Loading** — Pass. App init, import, session dialog templates, template management, and notification settings all show `CircularProgressIndicator` during load.
- [x] **5.2 Success feedback** — Pass. Theme change, export/import, and notification settings use SnackBars for success confirmation.
- [~] **5.3 Error feedback** — Partial. Export/import and notification settings show SnackBars on failure. Some paths (notification reschedule, YAML export service) only `print` — silent to the user.
- [~] **5.4 Destructive confirmation** — Partial. Delete session + delete template confirm. Import runs immediately after file pick (result dialog only after). Remove student from session has **no** confirm.
- [x] **5.5 Foreground notifications** — Pass. Overlay banner with dismiss + 4s auto-dismiss; positioned with `SafeArea` / top padding; does not replace the main scaffold.

## 6. Forms & input

- [x] **6.1 Labels & hints** — Pass. Dialogs use `labelText` on title/time/description/student fields; phone uses label + hint.
- [~] **6.2 Validation** — Partial. Forms call `validate()` with field validators (title/name required, age). No explicit focus jump to first error field.
- [x] **6.3 Time pickers** — Pass. Uses platform `showTimePicker` (locale-aware via Material localizations); large tappable `InkWell` + `InputDecorator` targets.
- [~] **6.4 Keyboard / focus** — Partial. Dialog bodies scroll (`SingleChildScrollView`). Action buttons sit in `AlertDialog.actions` — can still be covered by keyboard on small phones; no custom `viewInsets` handling.
- [~] **6.5 Defaults** — Partial. Default 9:00–10:00 is fine and editable. Last template auto-applies on create (reversible via “None”) but isn’t explained in UI copy — same surprise as 4.5.

## 7. Accessibility

- [~] **7.1 Touch targets** — Partial. `IconButton`/FAB meet ~48dp. Calendar day circles are **36×36** (row height 44) — below 48dp guideline; week row tap helps. Session card edit/delete icons OK via IconButton padding.
- [~] **7.2 Semantics / screen readers** — Partial. Many IconButtons + day FAB have tooltips. No `Semantics` widgets; week rows are bare `GestureDetector`s; session card edit/delete icons lack tooltips.
- [!] **7.3 Contrast** — Fail. White on Teal/coral ~2.4–2.7:1 (F12). Weekend `Colors.red` on white ~3.7:1 (large OK, normal fail). Body on cream passes.
- [~] **7.4 Text scaling** — Partial / risk. Calendar day cell uses fixed height `44` / circle `36` — large text will clip. Session time leading column packs two lines in a tight box. Lists/settings mostly flexible; not verified on-device at 200% scale.
- [~] **7.5 Reduce motion** — Partial. Tab/`animateTo` motion is light. Foreground banner always runs slide/scale/progress animations — no `MediaQuery.disableAnimations` check.

## 8. Localization & internationalization

- [~] **8.1 String coverage** — Partial. Core flows use l10n. `theme_settings_page` hardcodes English description/about body (and English fallbacks); theme names (`Teal`, `Blue`, …) are English-only (F8).
- [x] **8.2 Date / time formats** — Pass. Dates use `formatShortDate`; list time chips use `formatTimeOfDay` inside `FittedBox` (64dp chip) so locale AM/PM doesn’t overflow. Session dialog fields still show numeric HH:mm.
- [~] **8.3 RTL** — Partial. Hebrew locale registered; Material `Row`/`ListTile` flip. Fixed FAB to `PositionedDirectional` + debug chip `EdgeInsetsDirectional`. Not fully verified on-device; theme swatch checkmark still absolute top-right.
- [~] **8.4 Pluralization** — Partial. Uses `count == 1 ? student() : students()` (English binary). Works for many locales; wrong for languages with more plural categories (e.g. Russian, Polish). Prefer ICU `{count, plural, ...}` in ARB.

## 9. Responsive & platform

- [x] **9.1 Phone portrait** — Pass (code review). Stack is calendar (max 40% height, scrollable) → day tabs → list + FAB. Primary path fits one phone screen; app bar density stays light.
- [x] **9.2 Small height** — Pass. Calendar wrapped in `ConstrainedBox(maxHeight: 40% height)` + `SingleChildScrollView`, so day tabs/list keep space on short screens.
- [~] **9.3 Tablet / desktop / web** — Partial. App runs on macOS/web but UI is phone-first with no width breakpoints / master-detail. Hit targets still work; large screens look stretched.
- [x] **9.4 Safe areas** — Pass. Home body + events/templates use `SafeArea`; AppBars handle status bar; foreground banner accounts for top padding.
- [x] **9.5 Platform conventions** — Pass. Consistent Material 3 across platforms (`useMaterial3: true`); acceptable for a cross-platform Flutter app without Cupertino forks.

## 10. Content & microcopy

- [x] **10.1 Empty states** — Pass. Day sessions, students, events, and templates all have icon + copy; day/students point to + actions.
- [~] **10.2 Help page** — Partial. Core flows mostly accurate. **Navigation tips** claim Theme/Help are top-bar icons — they live in the overflow menu. Student add is via session card → Students page, not a create-dialog “students section.”
- [~] **10.3 Error copy** — Partial. Localized titles exist (`Import Failed`, `Error reading file`) but many SnackBars append raw exception text (`Error: $error`) with little recovery guidance.
- [x] **10.4 Button labels** — Pass. Primary actions use verbs (`Save`, `Delete`, `Create`, `Export Data`, `Import Data`). Dialog dismiss uses `OK` / `Cancel` appropriately.

---

## Findings & backlog

Initial scan notes (pre-loop). Converted into checklist marks during ticks.

| ID | Severity | Finding | Suggested fix |
|----|----------|---------|---------------|
| F1 | High | No dark theme — `ThemeService` only builds `ColorScheme.light` | Add dark schemes + `ThemeMode` |
| F2 | High | Hard-coded whites/greys (`main.dart` tab bar, `week_calendar.dart`, cards) fight custom themes | Prefer `colorScheme.surface` / `onSurface` |
| F3 | Medium | Almost no `Semantics`; day FAB tooltip added | Broader semantics still open |
| F4 | Medium | ~~Hard-coded d/M/y dates~~ | Fixed via MaterialLocalizations (tick 40) |
| F5 | Medium | Weekend day headers force `Colors.red` — contrast + cultural assumption | Theme semantic color or softer emphasis |
| F6 | Medium | ~~`DayTabView` nested Scaffold~~ | Fixed: body `Stack` + FAB (tick 14) |
| F7 | Low | Session card trailing edit/delete may crowd narrow widths | Overflow menu or swipe actions |
| F8 | Low | Theme names (Teal/Blue/…) may be English-only in UI | Localize theme display names |
| F9 | Info | Strong l10n coverage and empty states — keep as strengths | — |
| F10 | Info | App bar tooltips present for Events / Notifications | — |
| F11 | Medium | Core screens bypass `textTheme` with raw font sizes | Route labels through `Theme.of(context).textTheme` |
| F12 | High | Teal primary/secondary too light for white labels (~2.4:1) | Darken primary ~ `#2F8A83` or use dark `onPrimary` surfaces |

---

## Loop log

| Tick | Item | Result | Notes |
|------|------|--------|-------|
| 0 | 1.1 Color tokens | `[!]` | Hard-coded colors dominate widgets; deferred bulk refactor to later ticks |
| 1 | 1.2 Typography scale | `[!]` | Settings/help use textTheme; core flows use ad-hoc sizes — no theme textTheme config |
| 2 | 1.3 Spacing rhythm | `[~]` | 16 gutter dominates; 8/12 card gaps and 16/20 card padding drift |
| 3 | 1.4 Elevation & surfaces | `[~]` | Mixed elev 0/1/2; surface==background; white cards + ad-hoc shadows |
| 4 | 1.5 Border radius | `[~]` | Theme 8/12 OK; widgets also invent 4/9/16/20 without tokens |
| 5 | 1.6 Iconography | `[~]` | Sizes OK; delete/import colors hard-coded; filled vs outlined mix |
| 6 | 1.7 Brand / product identity | `[~]` | Teal default distinctive; other themes + default fonts feel stock |
| 7 | 2.1 Light theme quality | `[!]` | White on Teal/coral fails WCAG; body on cream OK |
| 8 | 2.2 Dark mode | `[!]` | No dark ColorScheme / ThemeMode; deferred (F1) |
| 9 | 2.3 Theme persistence | `[x]` | SharedPreferences `selected_theme` load/save works |
| 10 | 2.4 Theme preview | `[x]` | Swatches + check + live apply; surface not in swatch |
| 11 | 2.5 System preference | `[!]` | No ThemeMode.system; blocked by missing dark mode |
| 12 | 3.1 Primary task path | `[x]` | Week → day → session → students all on/from home |
| 13 | 3.2 App bar density | `[x]` | 2 primary icons + overflow for secondary |
| 14 | 3.3 Nested scaffolds | `[x]` | Removed nested Scaffold in DayTabView; Stack+FAB |
| 15 | 3.4 Back / return refresh | `[x]` | Events/Students refresh on pop; theme via notifier |
| 16 | 3.5 Deep secondary screens | `[x]` | Notifications in app bar; rest in overflow |
| 17 | 4.1 Empty day state | `[x]` | Icon+copy+FAB; added FAB tooltip |
| 18 | 4.2 Create session | `[x]` | Title/time validation + templates OK |
| 19 | 4.3 Edit / delete session | `[x]` | Edit icon + delete confirm dialog |
| 20 | 4.4 Students on session | `[x]` | Empty guidance + add/edit/remove clear |
| 21 | 4.5 Templates | `[~]` | Opt-in save OK; auto last-template on create can surprise |
| 22 | 4.6 Week selection | `[x]` | Selected week / today ring / session dots distinct |
| 23 | 4.7 Past days | `[x]` | Current-week past days filtered from tabs; intentional |
| 24 | 5.1 Loading | `[x]` | Init/import/templates/settings use progress indicators |
| 25 | 5.2 Success feedback | `[x]` | Theme/export/import/notifications use SnackBars |
| 26 | 5.3 Error feedback | `[~]` | User-facing import/settings OK; some errors print-only |
| 27 | 5.4 Destructive confirmation | `[~]` | Session/template delete OK; import & remove-student no pre-confirm |
| 28 | 5.5 Foreground notifications | `[x]` | Dismissible overlay + SafeArea; non-blocking |
| 29 | 6.1 Labels & hints | `[x]` | Forms use visible labelText |
| 30 | 6.2 Validation | `[~]` | Validators on submit; no focus-to-first-error |
| 31 | 6.3 Time pickers | `[x]` | showTimePicker + large tap targets |
| 32 | 6.4 Keyboard / focus | `[~]` | Scrollable dialogs; actions may sit under keyboard |
| 33 | 6.5 Defaults | `[~]` | 9–10 OK; last-template default reversible but unexplained |
| 34 | 7.1 Touch targets | `[~]` | Icons OK; calendar day cells 36dp < 48 |
| 35 | 7.2 Semantics / screen readers | `[~]` | Tooltips common; no Semantics; calendar/week gaps |
| 36 | 7.3 Contrast | `[!]` | Primary/secondary white labels fail AA (F12) |
| 37 | 7.4 Text scaling | `[~]` | Fixed calendar heights risk clip at large text |
| 38 | 7.5 Reduce motion | `[~]` | Banner ignores disableAnimations |
| 39 | 8.1 String coverage | `[~]` | Strong l10n; theme page English hardcodes remain |
| 40 | 8.2 Date / time formats | `[x]` | Locale-aware short date/time on main list UIs |
| 41 | 8.3 RTL | `[~]` | Hebrew supported; FAB/chip directional; not fully verified |
| 42 | 8.4 Pluralization | `[~]` | Binary EN plural; not ICU plural forms |
| 43 | 9.1 Phone portrait | `[x]` | Calendar capped + tabs/list/FAB layout OK |
| 44 | 9.2 Small height | `[x]` | Calendar max 40% + scroll protects day list |
| 45 | 9.3 Tablet / desktop / web | `[~]` | Phone-first stretched; no adaptive layout |
| 46 | 9.4 Safe areas | `[x]` | SafeArea + AppBar + banner top padding |
| 47 | 9.5 Platform conventions | `[x]` | Consistent Material 3 cross-platform |
| 48 | 10.1 Empty states | `[x]` | Helpful empty copy across core lists |
| 49 | 10.2 Help page | `[~]` | Nav tips outdated (Theme/Help in overflow) |
| 50 | 10.3 Error copy | `[~]` | Localized labels; recovery guidance weak |
| 51 | 10.4 Button labels | `[x]` | Action verbs clear; OK/Cancel for dismiss |
| — | — | — | Checklist complete; loop stopped |

---

## Definition of done

Checklist is done when every item is `[x]`, `[~]`, or `[!]` with a note, progress reads `42 / 42`, and High severity findings are either fixed or explicitly deferred in the backlog with owner rationale.
