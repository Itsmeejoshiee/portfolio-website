'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a8ac7f243172b90eb7425009a61fdc8f",
"assets/AssetManifest.bin.json": "13f942eaeac0e0769f758d527a1a9833",
"assets/AssetManifest.json": "66432512ab97787a7ab5b62cd9659535",
"assets/assets/itsmeejoshie.png": "ac9a8e8965736e750ec3dda137956b19",
"assets/assets/projects/a11y.png": "48d91de9eb86b14759ba17965d09c09f",
"assets/assets/projects/trashtrackr.png": "6690118d09dbde13db2a442aaf0151fe",
"assets/assets/projects/twist_bloom.png": "fa012dc72caf80061e573989291840a7",
"assets/assets/tech_stack/firebase_icon.png": "04aec5a53cd16f26a855e61aa5cd35b5",
"assets/assets/tech_stack/flutter_icon.png": "8efb797d33c586ef3cb71d4083dd1fdb",
"assets/assets/tech_stack/git_icon.png": "5b2255699fcb506b570720cdbc8ade1b",
"assets/assets/tech_stack/kotlin_icon.png": "a7388fc60a26cfbeda5adf05dd318cc2",
"assets/assets/tech_stack/notion_icon.png": "97a1a9c021a230c0e83a120a807032cc",
"assets/assets/tech_stack/supabase_icon.png": "81a9efab29b896a32c942dc296fb9d7e",
"assets/FontManifest.json": "3ddd9b2ab1c2ae162d46e3cc7b78ba88",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "5c6ad91352a3464e5bdc9f0d83a6494b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "41e8302cbaf04408585d948a435f4421",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.ico": "93e2f0447a2c0fcead2685835875fec9",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "3c3fcc0a12468f0472e995a9461f41fc",
"icons/531aa9297c2e031ef12af4a731e95cbe.ico.zip": "399b3b1e34848b00d4f568f7e1c83844",
"icons/android-icon-144x144.png": "a144ed76b81f5bddc4ce272a5405b5ec",
"icons/android-icon-192x192.png": "dfc5c1e0d5b40201fa839ef5ce045246",
"icons/android-icon-36x36.png": "3e65eba4088f4a75709b6db25e5a0ae7",
"icons/android-icon-48x48.png": "d2db761dc9b705d1ef3b194ccf6bd229",
"icons/android-icon-72x72.png": "81df6b35c14e027df7f2735c962d236c",
"icons/android-icon-96x96.png": "4388aaa3593455cea5b776723a2cb13f",
"icons/apple-icon-114x114.png": "d83c426b7bb09cc5c7319fb53cf37117",
"icons/apple-icon-120x120.png": "d867c89c6936d5c4b34d337ba5423200",
"icons/apple-icon-144x144.png": "ab44516060e319e9e9c8bb9dcac25c19",
"icons/apple-icon-152x152.png": "f079b0c33da5a4bd571ea912ab80c235",
"icons/apple-icon-180x180.png": "df0c961824eb1ca09584aad8a7ee8860",
"icons/apple-icon-57x57.png": "958933442aa6cc8177db240003085360",
"icons/apple-icon-60x60.png": "90885c047fff706423b2fe6fbb383895",
"icons/apple-icon-72x72.png": "81df6b35c14e027df7f2735c962d236c",
"icons/apple-icon-76x76.png": "d253f4e7fbe8beab3985a7a3dea0414e",
"icons/apple-icon-precomposed.png": "3643115c5ea415994078c45cc4e2f3a2",
"icons/apple-icon.png": "3643115c5ea415994078c45cc4e2f3a2",
"icons/browserconfig.xml": "97775b1fd3b6e6c13fc719c2c7dd0ffe",
"icons/favicon-16x16.png": "f7c5025bfb5e1a315e8daefe9cb83327",
"icons/favicon-32x32.png": "185620c12d231797e80f0e177e7ab065",
"icons/favicon-96x96.png": "da9315dd2a3dc3f9b147bda8c4977c17",
"icons/favicon.ico": "93e2f0447a2c0fcead2685835875fec9",
"icons/manifest.json": "e50e6a1c9ed6452635d3211f39501e0d",
"icons/ms-icon-144x144.png": "ab44516060e319e9e9c8bb9dcac25c19",
"icons/ms-icon-150x150.png": "90f2fe4574fe29e8afc1767de74ed479",
"icons/ms-icon-310x310.png": "834e8066e159e4b711f2ce5e367206fe",
"icons/ms-icon-70x70.png": "3036caa60b0333f3e78d45fd55a6c84a",
"index.html": "8fde8d19bbeaf657475f7dea30b4a99f",
"/": "8fde8d19bbeaf657475f7dea30b4a99f",
"main.dart.js": "7d1b843133e8073a3b17a6a9fdcc3528",
"manifest.json": "97ef829b54549fd9030dd77c5dbf1e5a",
"version.json": "c4d9a4567327c2296f4bbaf62a21ce27"};
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
