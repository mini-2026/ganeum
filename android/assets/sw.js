/* 가늠 웹앱(아이폰): 한 번 연 화면 파일을 저장해 두고, 인터넷이 없을 때만 저장분으로 열어요.
   인터넷이 되면 항상 새 파일을 받아요(새 버전이 바로 보이게). 이 앱 경로 안의 같은 주소 파일만 다뤄요. */
'use strict';
const CACHE = 'ganeum-app-v1';
const FILES = ['./', 'index.html', 'app.js'];
self.addEventListener('install', e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(FILES)).catch(() => { /* 무시 */ }).then(() => self.skipWaiting()));
});
self.addEventListener('activate', e => {
  e.waitUntil(caches.keys().then(ks => Promise.all(ks.filter(k => k.startsWith('ganeum-app-') && k !== CACHE).map(k => caches.delete(k)))).then(() => self.clients.claim()));
});
self.addEventListener('fetch', e => {
  const req = e.request;
  if (req.method !== 'GET') return;
  const url = new URL(req.url);
  if (url.origin !== location.origin || !url.pathname.startsWith(new URL('./', location.href).pathname)) return;
  e.respondWith(fetch(req).then(res => {
    if (res.ok && res.type === 'basic') { const copy = res.clone(); caches.open(CACHE).then(c => c.put(req, copy)).catch(() => { /* 무시 */ }); }
    return res;
  }).catch(() => caches.match(req, { ignoreSearch: true }).then(r => r || caches.match('index.html'))));
});
