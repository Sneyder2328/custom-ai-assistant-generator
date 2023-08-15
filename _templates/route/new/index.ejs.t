---
to: src/routes/index.ts
inject: true
after: // Route handlers
---
<%
const modules = h.inflection.pluralize(module)
%>
router.use("/", <%= modules %>Router);