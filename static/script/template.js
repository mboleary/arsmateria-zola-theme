/**
 * Contains all optional template-related code
 */

/**
 * Clear Children from a node
 * @param {HTMLElement} node
 */
function clearChildren(node) {
  while (node.hasChildNodes()) {
    node.removeChild(node.firstChild);
  }
}

/**
 * Renders an array of objects into a list of elements using a template
 * @param {HTMLTemplateElement} template template element
 * @param {any} items array of results to render
 * @returns a document fragment
 */
function renderItemsIntoTemplate(template, items) {
  const frag = document.createDocumentFragment();

  for (const item of items) {
    const temp = template.content.cloneNode(true);

    const fields = temp.querySelectorAll("[field]");

    for (const field of fields) {
      const f = field.getAttribute("field");
      const ft = field.getAttribute("field-target");
      if (f && item[f]) {
        if (ft) {
          field.setAttribute(ft, item[f]);
        } else {
          field.textContent = item[f];
        }
      }
    }

    frag.appendChild(temp);
  }

  return frag;
}
