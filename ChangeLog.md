# Revision history for jsaddle-dom

## 0.10.0.0

A major release: the bindings are regenerated from current specifications
by a new generator, `dom-gen` (in the ghcjs-integration repository),
replacing domconv-webkit and the WebKitGTK 2.17.2 IDL the 0.9 series was
generated from.  Expect to update code.  ghcjs-dom 0.10 has the same API.

* Source of truth: the Web IDL of the browser specifications in
  [webref](https://github.com/w3c/webref) (`@webref/idl` 3.86.0) and MDN's
  browser-compat-data (8.1.8).  An interface or member is bound when it
  ships, unprefixed, in at least two of Chromium, Gecko and WebKit (partial
  implementations count), or when 0.9 had it and one engine ships it.
* [API-CHANGES-0.10.md](API-CHANGES-0.10.md) lists every change, generated
  by `dom-gen apidiff` against 0.9.9.3: 158 interfaces no longer in any
  specification (mostly WebKit-only), 13 renamed WebGL interfaces, and
  2743 removed, 831 moved, 1266 retyped and 13386 new Haskell names.
* Events are typed from the specifications' event tables: for example
  `click` is a `PointerEvent`, `focus` a `FocusEvent`, `input` an
  `InputEvent`.
* Interface mixins (`ParentNode`, `GlobalEventHandlers`, `ARIAMixin`, ...)
  are `Is*` classes with their own modules; `requestAnimationFrame` is in
  `AnimationFrameProvider` and takes a `FrameRequestCallback`.
* `long long` and `unsigned long long` are `Int53` and `Word53` (jsaddle
  0.9.10, `Language.Javascript.JSaddle.Int53`): JavaScript Numbers are
  exact only up to 2^53, and the types have no `Num` instance so that
  conversions are explicit.
* Nullable results are `Maybe` for numbers too: a `null` result is now
  `Nothing` (0.9 could return `Just 0`).
* Dictionaries (`MouseEventInit`, `AddEventListenerOptions`, ...) have
  builders, one module each: `newPointerEventInit` makes an empty object
  (taking the required members as arguments, as in `newRTCIceServer urls`),
  and `setX` / `getX` reach each member, inherited ones through the `Is*`
  class (`MouseEventInit.setClientX` works on a `PointerEventInit`).
  Getters of optional members return `Maybe`: an unset member is `Nothing`.
* Optional arguments are `Maybe` and `Nothing` passes `undefined`.  When a
  0.9 operation gained trailing optional arguments, the old arity keeps the
  old name and the full one is primed (`createElement` / `createElement'`).
* Overloads keep their 0.9 names where they match; otherwise they are
  named by their distinguishing arguments.
* `JSDOM.EventM`: the mouse and touch helpers follow the specification
  types: `mouseClientXY`, `mouseScreenXY` and `uiLayerXY` stay `Int`
  (`long`), while the CSSOM View coordinates (`mouseXY`, `mouseOffsetXY`,
  `uiPageXY`) and `mouseMovementXY` are `Double`, and nullable results are
  `Maybe`.  `uiLayerXY` / `uiPageXY` take any `IsMouseEvent`, and
  `mouseFromElement` / `mouseToElement` are gone.
* Hand written modules: only `Geolocation`, `GeolocationPositionError`
  (was `PositionError`) and `XMLHttpRequest` remain; the hand written
  callbacks in `JSDOM.Types` are now generated.
* Requires jsaddle >= 0.9.10.
