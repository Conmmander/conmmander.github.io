'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"flutter_bootstrap.js": "bd671ceaa13e50e3e3ae1664d447a1c9",
"version.json": "a1014a4552c1d876dff997006c1ae55f",
"main.dart.js": "642d0bd9b82afb655ea45f8e12c5e20c",
"assets/NOTICES": "7609a33c241cd265f2cbefa2729f1602",
"assets/AssetManifest.bin": "e7e82b685ab928f9092b532e978412bd",
"assets/assets/web/CNAME": "ccf3cb0f428a0e37ea8ea076d49d8cbc",
"assets/assets/web/sitemap.xml": "6339f50f79bbb823650edb7ca8cd47f1",
"assets/assets/web/robots.txt": "ee90d775f8c7781a8f5d9bfcdc02711b",
"assets/assets/pdf/Dodd_Ryan_Resume.pdf": "96cd62d87c09027c8ae43b277e8108b0",
"assets/assets/certs/java_basic.png": "49e88cd0a9c520d3fade8c29c1bbfe39",
"assets/assets/img/icons/nodejs-original.svg": "19f661d0537a79acbcb13829537c2930",
"assets/assets/img/icons/github-original.svg": "4b8a4845e3c03b05cc92e2b3199889d5",
"assets/assets/img/icons/firebase-original.svg": "e49de29322e84ba9bef16c93af22891d",
"assets/assets/img/icons/typo3-original.svg": "c0420e612f8fcf41188ce290f43f783e",
"assets/assets/img/icons/eclipse-original.svg": "9a1af975c424f4e4114aedff4ff0eb8c",
"assets/assets/img/icons/python-original.svg": "71374043d9b3d9ea7fa09976a747d475",
"assets/assets/img/icons/mysql-original.svg": "e8eb3c35a4724c59933bb8b80b402586",
"assets/assets/img/icons/intellij-original.svg": "56aafc84bbc87ba088ef976134fd58d7",
"assets/assets/img/icons/digitalocean-original.svg": "efbc96296b014753461feae651fd7164",
"assets/assets/img/icons/javascript-original.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/img/icons/csharp-original.svg": "ec7be0a3500b106a4e451fd951e1c717",
"assets/assets/img/icons/html5-original.svg": "16d07e8682a531f3bc1e9fb01bd59740",
"assets/assets/img/icons/mongodb-original.svg": "8aad4da2ed641d2378923f85fe35189d",
"assets/assets/img/icons/trello-original.svg": "4e3154ae1abb5ce05b78dd4e36186cbe",
"assets/assets/img/icons/markdown-original.svg": "83e04bab324ed9ad39537ac2b9186120",
"assets/assets/img/icons/react-original.svg": "4f81f37c8c72270f6c343b8814c10ea8",
"assets/assets/img/icons/visualstudio-original.svg": "157e230986fa0e7e6e464df7824a2725",
"assets/assets/img/icons/cplusplus-original.svg": "e5b135b00998f9cd69a38eed9b1eee81",
"assets/assets/img/icons/unity-original.svg": "6c6026d853495519f672912cadb3d702",
"assets/assets/img/icons/dart-original.svg": "11b770f163584b0e8cbba1f7bc626f55",
"assets/assets/img/icons/java-original.svg": "459bbae2e96a2410c5b429eb941a4c11",
"assets/assets/img/icons/css3-original.svg": "a55118403c13e2719d453b74dffa80f8",
"assets/assets/img/icons/lua-original.svg": "d1c7c4f56de7b6ca09c46e0243dfaebc",
"assets/assets/img/icons/git-original.svg": "fef8e95112e6ab6f2169430ee510db5e",
"assets/assets/img/icons/flutter-original.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/img/icons/sqlite-original.svg": "9cd0afda09d84d1dff47a2e1a86522bd",
"assets/assets/img/icons/rstudio-original.svg": "7249d4defc195aa93de4fee2ebd6cb10",
"assets/assets/img/icons/clion-original.svg": "547c275b913d81ea44fc4285ddf3fd69",
"assets/assets/img/icons/vscode-original.svg": "fdb860af4a7895702f99c996eee8cc0a",
"assets/assets/img/icons/ssh-original.svg": "cfd190220aec5944bfffffb069b47d74",
"assets/assets/img/icons/cloudflare-original.svg": "ecc0014556953c4475e5c34c9311e70c",
"assets/assets/img/experience_logos/threefires-logo.png": "d1afc800e54c9429f2061989e0115f4b",
"assets/assets/img/experience_logos/firchauconstruction-logo.png": "50f23c7a727de26df724b5cb0d5e867b",
"assets/assets/img/experience_logos/airforce-logo.png": "24e77914790e6eaeb4412f1072ddf813",
"assets/assets/img/experience_logos/stpets-logo.png": "92f2c1d1bee1159ea2d142c66a85ea44",
"assets/assets/img/experience_logos/bradley-logo.png": "8834be35d93f4db42b74444f36fcadb5",
"assets/assets/img/personal/me.jpeg": "8f70b63ab994a5cd48e10817dce96bfd",
"assets/assets/img/personal/error.jpg": "5d04975625a070a83ac525ddc0ffb097",
"assets/assets/img/personal/chicago-me.jpg": "6df5c4e023729fcb3527318189564070",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "485630d94ee723b114ad27d0df3fc4eb",
"assets/AssetManifest.bin.json": "08ede9b11134d0404781eb5c4e4c04f3",
"assets/FontManifest.json": "3ddd9b2ab1c2ae162d46e3cc7b78ba88",
"assets/fonts/MaterialIcons-Regular.otf": "5a14c8b5edef67ae6e2e2c5bdbf3d8cb",
"assets/AssetManifest.json": "eb982c8fdd0549e6052fb3891a29638d",
"index.html": "6c4ce74707f08824749f69f521329df6",
"/": "6c4ce74707f08824749f69f521329df6",
"manifest.json": "d5ac5491087fad6886a732e0c709c9ed"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
