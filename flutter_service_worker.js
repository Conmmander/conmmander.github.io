'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "7d72248e679dfc418e4ac527127bcf6a",
"assets/AssetManifest.bin.json": "3708fbe307080fd300828031ef3f1922",
"assets/AssetManifest.json": "65d07669560701352537419f22796b59",
"assets/assets/certs/java_basic.png": "49e88cd0a9c520d3fade8c29c1bbfe39",
"assets/assets/img/experience_logos/airforce-logo.png": "24e77914790e6eaeb4412f1072ddf813",
"assets/assets/img/experience_logos/bradley-logo.png": "8834be35d93f4db42b74444f36fcadb5",
"assets/assets/img/experience_logos/firchauconstruction-logo.png": "50f23c7a727de26df724b5cb0d5e867b",
"assets/assets/img/experience_logos/stpets-logo.png": "92f2c1d1bee1159ea2d142c66a85ea44",
"assets/assets/img/experience_logos/threefires-logo.png": "d1afc800e54c9429f2061989e0115f4b",
"assets/assets/img/icons/clion-original.svg": "f9cb31b5ee934ce784148e3598f4c32f",
"assets/assets/img/icons/cloudflare-original.svg": "ecc0014556953c4475e5c34c9311e70c",
"assets/assets/img/icons/cplusplus-original.svg": "6f2a76ffb3b72fcb544ed350170ffeae",
"assets/assets/img/icons/csharp-original.svg": "ec7be0a3500b106a4e451fd951e1c717",
"assets/assets/img/icons/css3-original.svg": "a55118403c13e2719d453b74dffa80f8",
"assets/assets/img/icons/dart-original.svg": "11b770f163584b0e8cbba1f7bc626f55",
"assets/assets/img/icons/digitalocean-original.svg": "1050dd28ee22e4cf5bc1c64fd9daf67a",
"assets/assets/img/icons/eclipse-original.svg": "feb6ec4f213595c288f1baaa71e0a5e1",
"assets/assets/img/icons/firebase-original.svg": "62f4806427924370bad7d79d2de0bb68",
"assets/assets/img/icons/flutter-original.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/img/icons/git-original.svg": "fef8e95112e6ab6f2169430ee510db5e",
"assets/assets/img/icons/github-original.svg": "4b8a4845e3c03b05cc92e2b3199889d5",
"assets/assets/img/icons/html5-original.svg": "16d07e8682a531f3bc1e9fb01bd59740",
"assets/assets/img/icons/intellij-original.svg": "64afa7830c432298a18227edb09a85ba",
"assets/assets/img/icons/java-original.svg": "459bbae2e96a2410c5b429eb941a4c11",
"assets/assets/img/icons/javascript-original.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/img/icons/lua-original.svg": "6c44774f0fb3df7ed05bad5e21d50df8",
"assets/assets/img/icons/markdown-original.svg": "b338f1fab50f26efac0b9d9e5a8af066",
"assets/assets/img/icons/mongodb-original.svg": "8aad4da2ed641d2378923f85fe35189d",
"assets/assets/img/icons/mysql-original.svg": "e390b8eabf8854596742b62129201741",
"assets/assets/img/icons/nodejs-original.svg": "bfd96b0662522e3d16db3f6a6e7f5585",
"assets/assets/img/icons/python-original.svg": "19816abc24d61b6c0cf28814ba9394ab",
"assets/assets/img/icons/react-original.svg": "4f81f37c8c72270f6c343b8814c10ea8",
"assets/assets/img/icons/rstudio-original.svg": "7249d4defc195aa93de4fee2ebd6cb10",
"assets/assets/img/icons/sqlite-original.svg": "18099b43a1e3e7384f5dcc4821e19139",
"assets/assets/img/icons/ssh-original.svg": "cfd190220aec5944bfffffb069b47d74",
"assets/assets/img/icons/trello-original.svg": "070bf90e349c701374e10a2535d5a91f",
"assets/assets/img/icons/typo3-original.svg": "1d70700f2bc8357704ca5269f6e02506",
"assets/assets/img/icons/unity-original.svg": "421a4e5697e7fb9120b1bd8fab8895f4",
"assets/assets/img/icons/visualstudio-original.svg": "ac82b423f2dbbb431e5189e31f1666f3",
"assets/assets/img/icons/vscode-original.svg": "7941742a483d03b34bb70a9075755a8b",
"assets/assets/img/personal/chicago-me.jpg": "6df5c4e023729fcb3527318189564070",
"assets/assets/img/personal/error.jpg": "5d04975625a070a83ac525ddc0ffb097",
"assets/assets/img/personal/me.jpeg": "8f70b63ab994a5cd48e10817dce96bfd",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "4ed447a113e13fba13d62f2eaf543190",
"assets/NOTICES": "103c3bb5cb89faec0e59832bb0833dfd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "485630d94ee723b114ad27d0df3fc4eb",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "eaa64665496869d62c2fcf1b9ca9563c",
"index.html": "cc131f0869e53b00ac8942f00bfb6098",
"/": "cc131f0869e53b00ac8942f00bfb6098",
"main.dart.js": "fd51bdf2ca683112bad45b917ef4f8f9",
"manifest.json": "d6b37381525ea7cfacecc7b544367e47",
"version.json": "3d580c8884ce2e572a5ba7fd382bd4a3"};
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
