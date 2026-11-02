// Prints docs/index.html to a PDF using the page's own @media print rules, so
// the PDF and the reading page are one source rendered two ways.
const { chromium } = require('playwright');
const path = require('path');

(async () => {
  const src = '/home/claude/aof3/docs/index.html';
  const out = '/home/claude/aof3/docs/the-architecture-of-failure.pdf';

  const browser = await chromium.launch();
  const page = await browser.newPage();
  // Light scheme explicitly: the dark-mode variables must not reach paper.
  await page.emulateMedia({ media: 'print', colorScheme: 'light' });
  await page.goto('file://' + src, { waitUntil: 'load', timeout: 180000 });

  const t0 = Date.now();
  await page.pdf({
    path: out,
    format: 'Letter',
    printBackground: true,
    preferCSSPageSize: true,
    displayHeaderFooter: true,
    headerTemplate: '<div></div>',
    footerTemplate:
      '<div style="width:100%;font:8pt Georgia,serif;color:#6a6862;' +
      'padding:0 18mm;display:flex;justify-content:space-between;">' +
      '<span>The Architecture of Failure: A Disclosure, with Logs</span>' +
      '<span class="pageNumber"></span></div>',
    margin: { top: '19mm', right: '18mm', bottom: '16mm', left: '18mm' },
    timeout: 300000,
  });
  console.log('pdf written in ' + ((Date.now() - t0) / 1000).toFixed(1) + 's');
  await browser.close();
})();
