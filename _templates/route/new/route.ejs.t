---
to: src/routes/<%= h.inflection.pluralize(module) %>/<%= h.inflection.pluralize(module) %>.route.ts
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
import { Router } from "express";
import { authenticateMiddleware } from "../../middlewares/authentication.middleware.js";
import {
  <% methodsNames.forEach((method, index)=>{ -%>
    <%= method %><%= Module %>Controller,
  <% }) -%>
} from "./<%= modules %>.controllers.js";
import {
  <% methodsNames.forEach((method, index)=>{ -%>
    validate<%= h.inflection.capitalize(method) %><%= Module %>,
  <% }) -%>
} from "./<%= modules %>.validators.js";

const router = Router();

<% methodsNames.forEach((method, index)=>{ -%>
router.<%= methods.split(' ')[index] %>(
  '/<%= modules %>',
  authenticateMiddleware(),
  validate<%= h.inflection.capitalize(method) %><%= Module %>,
  <%= method %><%= Module %>Controller
);

<% }) -%>

export default router;
