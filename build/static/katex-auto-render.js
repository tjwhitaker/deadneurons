!(function (e, t) {
  "object" == typeof exports && "object" == typeof module
    ? (module.exports = t(require("katex")))
    : "function" == typeof define && define.amd
    ? define(["katex"], t)
    : "object" == typeof exports
    ? (exports.renderMathInElement = t(require("katex")))
    : (e.renderMathInElement = t(e.katex))
})("undefined" != typeof self ? self : this, function (e) {
  return (function () {
    "use strict"
    var t = {
        771: function (t) {
          t.exports = e
        },
      },
      r = {}
    function n(e) {
      var i = r[e]
      if (void 0 !== i) return i.exports
      var a = (r[e] = { exports: {} })
      return t[e](a, a.exports, n), a.exports
    }
    ;(n.n = function (e) {
      var t =
        e && e.__esModule
          ? function () {
              return e.default
            }
          : function () {
              return e
            }
      return n.d(t, { a: t }), t
    }),
      (n.d = function (e, t) {
        for (var r in t)
          n.o(t, r) &&
            !n.o(e, r) &&
            Object.defineProperty(e, r, { enumerable: !0, get: t[r] })
      }),
      (n.o = function (e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
      })
    var i = {}
    return (
      (function () {
        n.d(i, {
          default: function () {
            return s
          },
        })
        var e = n(771),
          t = n.n(e),
          r = function (e, t, r) {
            for (var n = r, i = 0, a = e.length; n < t.length; ) {
              var o = t[n]
              if (i <= 0 && t.slice(n, n + a) === e) return n
              "\\" === o ? n++ : "{" === o ? i++ : "}" === o && i--, n++
            }
            return -1
          },
          a = /^\\begin{/,
          o = function (e, t) {
            for (
              var n,
                i = [],
                o = new RegExp(
                  "(" +
                    t
                      .map(function (e) {
                        return e.left.replace(/[-/\\^$*+?.()|[\]{}]/g, "\\$&")
                      })
                      .join("|") +
                    ")"
                );
              -1 !== (n = e.search(o));

            ) {
              n > 0 &&
                (i.push({ type: "text", data: e.slice(0, n) }),
                (e = e.slice(n)))
              var l = t.findIndex(function (t) {
                return e.startsWith(t.left)
              })
              if (-1 === (n = r(t[l].right, e, t[l].left.length))) break
              var d = e.slice(0, n + t[l].right.length),
                s = a.test(d) ? d : e.slice(t[l].left.length, n)
              i.push({
                type: "math",
                data: s,
                rawData: d,
                display: t[l].display,
              }),
                (e = e.slice(n + t[l].right.length))
            }
            return "" !== e && i.push({ type: "text", data: e }), i
          },
          l = function (e, r) {
            var n = o(e, r.delimiters)
            if (1 === n.length && "text" === n[0].type) return null
            for (
              var i = document.createDocumentFragment(), a = 0;
              a < n.length;
              a++
            )
              if ("text" === n[a].type)
                i.appendChild(document.createTextNode(n[a].data))
              else {
                var l = document.createElement("span"),
                  d = n[a].data
                r.displayMode = n[a].display
                try {
                  r.preProcess && (d = r.preProcess(d)), t().render(d, l, r)
                } catch (e) {
                  if (!(e instanceof t().ParseError)) throw e
                  r.errorCallback(
                    "KaTeX auto-render: Failed to parse `" +
                      n[a].data +
                      "` with ",
                    e
                  ),
                    i.appendChild(document.createTextNode(n[a].rawData))
                  continue
                }
                i.appendChild(l)
              }
            return i
          },
          d = function e(t, r) {
            for (var n = 0; n < t.childNodes.length; n++) {
              var i = t.childNodes[n]
              if (3 === i.nodeType) {
                for (
                  var a = i.textContent, o = i.nextSibling, d = 0;
                  o && o.nodeType === Node.TEXT_NODE;

                )
                  (a += o.textContent), (o = o.nextSibling), d++
                var s = l(a, r)
                if (s) {
                  for (var f = 0; f < d; f++) i.nextSibling.remove()
                  ;(n += s.childNodes.length - 1), t.replaceChild(s, i)
                } else n += d
              } else
                1 === i.nodeType &&
                  (function () {
                    var t = " " + i.className + " "
                    ;-1 === r.ignoredTags.indexOf(i.nodeName.toLowerCase()) &&
                      r.ignoredClasses.every(function (e) {
                        return -1 === t.indexOf(" " + e + " ")
                      }) &&
                      e(i, r)
                  })()
            }
          },
          s = function (e, t) {
            if (!e) throw new Error("No element provided to render")
            var r = {}
            for (var n in t) t.hasOwnProperty(n) && (r[n] = t[n])
            ;(r.delimiters = r.delimiters || [
              { left: "$$", right: "$$", display: !0 },
              { left: "\\(", right: "\\)", display: !1 },
              {
                left: "\\begin{equation}",
                right: "\\end{equation}",
                display: !0,
              },
              { left: "\\begin{align}", right: "\\end{align}", display: !0 },
              {
                left: "\\begin{alignat}",
                right: "\\end{alignat}",
                display: !0,
              },
              { left: "\\begin{gather}", right: "\\end{gather}", display: !0 },
              { left: "\\begin{CD}", right: "\\end{CD}", display: !0 },
              { left: "\\[", right: "\\]", display: !0 },
            ]),
              (r.ignoredTags = r.ignoredTags || [
                "script",
                "noscript",
                "style",
                "textarea",
                "pre",
                "code",
                "option",
              ]),
              (r.ignoredClasses = r.ignoredClasses || []),
              (r.errorCallback = r.errorCallback || console.error),
              (r.macros = r.macros || {}),
              d(e, r)
          }
      })(),
      (i = i.default)
    )
  })()
})
