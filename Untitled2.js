function selectLastlySelectedTab(t) {
    t = t || "", $(t + " [data-toggle='ajax-tab']").each(function() {
        var t = $(this).attr("id"),
            a = getCookie("user_" + AppHelper.userId + "_" + t),
            e = $(this).find("[data-target='" + a + "']");
        a && e.attr("data-target") ? setTimeout(function() {
            e.trigger("click")
        }, 200) : $(this).find("a").first().trigger("click")
    })
}
$(document).ready(function() {
        $.ajaxSetup({
            cache: !1
        }), moment.locale(AppLanugage.locale), jQuery.fn.datepicker.dates.custom = {
            days: AppLanugage.days,
            daysShort: AppLanugage.daysShort,
            daysMin: AppLanugage.daysMin,
            months: AppLanugage.months,
            monthsShort: AppLanugage.monthsShort,
            today: AppLanugage.today
        }, $("body").on("click", "[data-act=ajax-modal]", function() {
            var a = {
                    ajaxModal: 1
                },
                t = $(this).attr("data-action-url"),
                e = $(this).attr("data-modal-lg"),
                o = $(this).attr("data-title");
            return t ? (o ? $("#ajaxModalTitle").html(o) : $("#ajaxModalTitle").html($("#ajaxModalTitle").attr("data-title")), $(this).attr("data-post-hide-header") ? ($("#ajaxModal .modal-header").addClass("hide"), $("#ajaxModal .modal-footer").addClass("hide")) : ($("#ajaxModal .modal-header").removeClass("hide"), $("#ajaxModal .modal-footer").removeClass("hide")), $("#ajaxModalContent").html($("#ajaxModalOriginalContent").html()), $("#ajaxModalContent").find(".original-modal-body").removeClass("original-modal-body").addClass("modal-body"), $("#ajaxModal").modal("show"), $(this).each(function() {
                $.each(this.attributes, function() {
                    var t;
                    this.specified && this.name.match("^data-post-") && (t = this.name.replace("data-post-", ""), a[t] = this.value)
                })
            }), ajaxModalXhr = $.ajax({
                url: t,
                data: a,
                cache: !1,
                type: "POST",
                success: function(t) {
                    $("#ajaxModal").find(".modal-dialog").removeClass("mini-modal"), "1" === e && $("#ajaxModal").find(".modal-dialog").addClass("modal-lg"), $("#ajaxModalContent").html(t), setSummernoteToAll(!0), setTimeout(function() {
                        setModalScrollbar()
                    }, 400)
                },
                statusCode: {
                    404: function() {
                        $("#ajaxModalContent").find(".modal-body").html(""), appAlert.error("404: Page not found.", {
                            container: ".modal-body",
                            animate: !1
                        })
                    }
                },
                error: function() {
                    $("#ajaxModalContent").find(".modal-body").html(""), appAlert.error("500: Internal Server Error.", {
                        container: ".modal-body",
                        animate: !1
                    })
                }
            })) : console.log("Ajax Modal: Set data-action-url!"), !1
        }), $("#ajaxModal").on("hidden.bs.modal", function(t) {
            ajaxModalXhr.abort(), $("#ajaxModal").find(".modal-dialog").removeClass("modal-lg"), $("#ajaxModal").find(".modal-dialog").addClass("mini-modal"), $("#ajaxModalContent").html("")
        }), $("body").on("click", "[data-act=ajax-request]", function() {
            var a = {},
                t = $(this),
                e = t.attr("data-action-url"),
                o = t.attr("data-remove-on-success"),
                n = t.attr("data-remove-on-click"),
                r = t.attr("data-fade-out-on-success"),
                i = t.attr("data-fade-out-on-click"),
                s = t.attr("data-inline-loader"),
                l = t.attr("data-reload-on-success"),
                d = "";
            if (t.attr("data-real-target") ? d = $(t.attr("data-real-target")) : t.attr("data-closest-target") && (d = t.closest(t.attr("data-closest-target"))), !e) return console.log("Ajax Request: Set data-action-url!"), !1;
            n && $(n).length && $(n).remove(), i && $(i).length && $(i).fadeOut(function() {
                $(this).remove()
            }), t.each(function() {
                $.each(this.attributes, function() {
                    var t;
                    this.specified && this.name.match("^data-post-") && (t = this.name.replace("data-post-", ""), a[t] = this.value)
                })
            }), "1" === s ? t.addClass("inline-loader") : appLoader.show(), ajaxRequestXhr = $.ajax({
                url: e,
                data: a,
                cache: !1,
                type: "POST",
                success: function(t) {
                    l && location.reload(), o && $(o).length && $(o).remove(), r && $(r).length && $(r).fadeOut(function() {
                        $(this).remove()
                    }), appLoader.hide(), d.length && d.html(t)
                },
                statusCode: {
                    404: function() {
                        appLoader.hide(), appAlert.error("404: Page not found.")
                    }
                },
                error: function() {
                    appLoader.hide(), appAlert.error("500: Internal Server Error.")
                }
            })
        }), $("body").on("click", '[data-toggle="ajax-tab"] a', function() {
            var t = $(this),
                a = t.attr("href"),
                e = t.attr("data-target");
            return e && ("" === $(e).html() && (appLoader.show({
                container: e,
                css: "right:50%; bottom:auto;"
            }), $.get(a, function(t) {
                $(e).html(t), selectLastlySelectedTab(e)
            })), t.tab("show")), !1
        }), selectLastlySelectedTab(), $("body").on("click", '[data-toggle="app-modal"]', function() {
            var t = !0;
            return "0" === $(this).attr("data-sidebar") && (t = !1), appContentModal.init({
                url: $(this).attr("data-url"),
                sidebar: t
            }), !1
        });

        function a(t, a) {
            var e = a.attr("data-success-callback");
            e && void 0 !== window[e] && (window[e](t, a), t.message && appAlert.warning(t.message, {
                duration: 2e4
            }))
        }
        $("body").on("click", "a[data-action=delete-confirmation]:not(table a)", function(t) {
            deleteConfirmationHandler(t, a)
        })
    }),
    function(s) {
        s.fn.appForm = function(t) {
            var n = s.extend({}, {
                ajaxSubmit: !0,
                isModal: !0,
                closeModalOnSuccess: !0,
                dataType: "json",
                showLoader: !0,
                onModalClose: function() {},
                onSuccess: function() {},
                onError: function() {
                    return !0
                },
                onSubmit: function() {},
                onAjaxSuccess: function() {},
                beforeAjaxSubmit: function(t, a, e) {}
            }, t);

            function i(t) {
                if (t) {
                    var a = AppHelper.settings.dateFormat || "Y.m.d",
                        e = (a = a.toLowerCase()).charAt("1"),
                        o = a.split(e),
                        n = 0,
                        r = 1,
                        i = 2;
                    "y" === o[1] ? n = 1 : "y" === o[2] && (n = 2), "m" === o[0] ? r = 0 : "m" === o[2] && (r = 2), "d" === o[0] ? i = 0 : "d" === o[1] && (i = 1);
                    var s = t.split(e);
                    return s[n] + "-" + s[r] + "-" + s[i]
                }
            }

            function a(t, a) {
                s.validator.addMethod("greaterThanOrEqual", function(t, a, e) {
                    var o = e;
                    return !e || 0 !== e.indexOf("#") && 0 !== e.indexOf(".") || (o = s(e).val()), void 0 === s(a).attr("data-rule-required") && !t || (/Invalid|NaN/.test(new Date(i(t))) ? isNaN(t) && isNaN(o) || Number(t) >= Number(o) : !o || new Date(i(t)) >= new Date(i(o)))
                }, "Must be greater than {0}."), s.validator.addMethod("greaterThan", function(t, a, e) {
                    var o = e;
                    return !e || 0 !== e.indexOf("#") && 0 !== e.indexOf(".") || (o = s(e).val()), /Invalid|NaN/.test(new Number(t)) ? isNaN(t) && isNaN(o) || Number(t) > Number(o) : new Number(t) > new Number(o)
                }, "Must be greater than."), s.validator.addMethod("mustBeSameYear", function(t, a, e) {
                    var o = e;
                    if (!e || 0 !== e.indexOf("#") && 0 !== e.indexOf(".") || (o = s(e).val()), !/Invalid|NaN/.test(new Date(i(t)))) {
                        var n = new Date(i(t)),
                            r = new Date(i(o));
                        return n && r && n.getFullYear() === r.getFullYear()
                    }
                }, "The year must be same for both dates."), s(t).validate({
                    submitHandler: function(t) {
                        if (!a) return !0;
                        a(t)
                    },
                    highlight: function(t) {
                        s(t).closest(".form-group").addClass("has-error")
                    },
                    unhighlight: function(t) {
                        s(t).closest(".form-group").removeClass("has-error")
                    },
                    errorElement: "span",
                    errorClass: "help-block",
                    ignore: ":hidden:not(.validate-hidden)",
                    errorPlacement: function(t, a) {
                        a.parent(".input-group").length ? t.insertAfter(a.parent()) : t.insertAfter(a)
                    }
                }), s(".validate-hidden").click(function() {
                    s(this).closest(".form-group").removeClass("has-error").find(".help-block").hide()
                })
            }

            function e(t) {
                t && (s(".modal-mask").html("<div class='circle-done'><i class='fa fa-check'></i></div>"), setTimeout(function() {
                    s(".modal-mask").find(".circle-done").addClass("ok")
                }, 30)), setTimeout(function() {
                    s(".modal-mask").remove(), s("#ajaxModal").modal("toggle"), n.onModalClose()
                }, 1e3)
            }
            return this.each(function() {
                n.ajaxSubmit ? a(s(this), function(o) {
                    n.onSubmit(), n.isModal ? function(t) {
                        var a = t.height() - 80;
                        0 < a && (a = Math.floor(a / 2));
                        t.after("<div class='modal-mask'><div class='circle-loader'></div></div>");
                        var e = t.outerHeight();
                        s(".modal-mask").css({
                            width: t.width() + 22 + "px",
                            height: e + "px",
                            "padding-top": a + "px"
                        }), t.closest(".modal-dialog").find('[type="submit"]').attr("disabled", "disabled"), t.addClass("hide")
                    }(s("#ajaxModalContent").find(".modal-body")) : s(o).find('[type="submit"]').attr("disabled", "disabled"), "1" === AppHelper.settings.enableRichTextEditor && s("textarea").each(function() {
                        var t = s(this);
                        t.attr("data-rich-text-editor") && ("<p><br></p>" === t.val() || "" === t.val() ? t.val("") : t.val(t.summernote("code")))
                    }), s(o).ajaxSubmit({
                        dataType: n.dataType,
                        beforeSubmit: function(e, t, a) {
                            s.each(e, function(t, a) {
                                a.data && a.data.convertDateFormat && a.value && (e[t].value = i(a.value))
                            }), !n.isModal && n.showLoader && appLoader.show({
                                container: o,
                                css: "top:2%; right:46%;"
                            }), n.beforeAjaxSubmit(e, t, a)
                        },
                        success: function(t) {
                            var a;
                            n.onAjaxSuccess(t), t.success ? (n.onSuccess(t), n.isModal && n.closeModalOnSuccess && e(!0), n.isModal || s(o).find("textarea").each(function() {
                                s(this).attr("data-rich-text-editor") && s(this).summernote("destroy")
                            }), appLoader.hide()) : n.onError(t) && (n.isModal ? ((a = s(".modal-body").removeClass("hide")).closest(".modal-dialog").find('[type="submit"]').removeAttr("disabled"), a.removeClass("hide"), s(".modal-mask").remove(), t.message && appAlert.error(t.message, {
                                container: ".modal-body",
                                animate: !1
                            })) : t.message && appAlert.error(t.message)), s(o).find('[type="submit"]').removeAttr("disabled")
                        }
                    })
                }) : a(s(this))
            }), this.closeModal = function() {
                e(!0)
            }, this
        }
    }(jQuery);
var getWeekRange = function(t) {
        t = t || moment().format("YYYY-MM-DD");
        var a = moment(t).format("E") - AppHelper.settings.firstDayOfWeek,
            e = {};
        return e.firstDateOfWeek = a < 7 ? moment(t).subtract(a, "days").format("YYYY-MM-DD") : moment(t).format("YYYY-MM-DD"), a < 0 && (e.firstDateOfWeek = moment(e.firstDateOfWeek).subtract(7, "days").format("YYYY-MM-DD")), e.lastDateOfWeek = moment(e.firstDateOfWeek).add(6, "days").format("YYYY-MM-DD"), e
    },
    prepareDefaultFilters = function(t) {
        var a, e, o, n, r, i, s, l, d, c, u, p, m;
        return "daily" === (a = t).dateRangeType ? (a.filterParams.start_date = moment().format(a._inputDateFormat), a.filterParams.end_date = a.filterParams.start_date) : "monthly" === a.dateRangeType ? (e = moment().daysInMonth(), o = moment().format("YYYY-MM"), a.filterParams.start_date = o + "-01", a.filterParams.end_date = o + "-" + e) : "yearly" === a.dateRangeType ? (n = moment().format("YYYY"), a.filterParams.start_date = n + "-01-01", a.filterParams.end_date = n + "-12-31") : "weekly" === a.dateRangeType && (r = getWeekRange(), a.filterParams.start_date = r.firstDateOfWeek, a.filterParams.end_date = r.lastDateOfWeek), i = t = a, s = [], l = "", $.each(i.checkBoxes, function(t, a) {
            l = a.name, a.isChecked && s.push(a.value)
        }), i.filterParams[l] = s, d = t = i, $.each(d.multiSelect, function(t, a) {
            var e = [];
            $.each(a.options, function(t, a) {
                a.isChecked && e.push(a.value)
            }), d.filterParams[a.name] = e
        }), c = t = d, $.each(c.radioButtons, function(t, a) {
            a.isChecked && (c.filterParams[a.name] = a.value)
        }), u = t = c, $.each(u.filterDropdown || [], function(t, e) {
            $.each(e.options, function(t, a) {
                a.isSelected && (u.filterParams[e.name] = a.id)
            })
        }), p = t = u, $.each(p.singleDatepicker || [], function(t, e) {
            $.each(e.options || [], function(t, a) {
                a.isSelected && (p.filterParams[e.name] = a.value)
            })
        }), m = t = p, $.each(m.rangeDatepicker || [], function(t, a) {
            a.startDate && a.startDate.value && (m.filterParams[a.startDate.name] = a.startDate.value), a.startDate && a.endDate.value && (m.filterParams[a.endDate.name] = a.endDate.value)
        }), t = m
    },
    buildFilterDom = function(u, p, m) {
        function f(t, a) {
            t.is("table") ? t.appTable({
                reload: !0,
                filterParams: a.filterParams
            }) : t.appFilters({
                reload: !0,
                filterParams: a.filterParams
            })
        }
        var t, a, e;
        u.search && !1 !== u.search.show && (t = '<div class="DTTT_container"><input type="search" class="custom-filter-search" name="' + u.search.name + '" placeholder="' + u.customLanguage.searchPlaceholder + '"></div>', p.find(".custom-toolbar").append(t), p.find(".custom-filter-search").keyup(function() {
            appLoader.show();
            var t = $(this);
            clearTimeout(a), a = setTimeout(function() {
                u.filterParams[u.search.name] = t.val(), f(m, u)
            }, 700)
        })), u.isMobile && (p.find(".custom-toolbar").addClass("clearfix"), !u.dateRangeType && void 0 === u.checkBoxes[0] && void 0 === u.multiSelect[0] && void 0 === u.radioButtons[0] && void 0 === u.singleDatepicker[0] && void 0 === u.rangeDatepicker[0] && void 0 === u.filterDropdown[0] || (e = "<div class='pull-right'>                        <button title='" + AppLanugage.filters + "' class='dropdown-toggle btn btn-default mt0' data-toggle='collapse' data-target='#table-collapse-filter' aria-expanded='false'><i class='fa fa-sliders'></i></button>                    </div>                    <div id='table-collapse-filter' class='navbar-collapse collapse w100p'></div>", p.find(".custom-toolbar").append(e))), u.reloadSelector && $(u.reloadSelector).length && $(u.reloadSelector).click(function() {
            appLoader.show(), f(m, u)
        });

        function h(t) {
            u.isMobile ? p.find("#table-collapse-filter").append(t) : p.find(".custom-toolbar").append(t)
        }
        var s, o, n, l, r, i, d, c, v, g;
        u.dateRangeType && (h('<div class="mr15 DTTT_container"><button data-act="prev" class="btn btn-default date-range-selector"><i class="fa fa-chevron-left"></i></button><button data-act="datepicker" class="btn btn-default" style="margin: -1px"></button><button data-act="next"  class="btn btn-default date-range-selector"><i class="fa fa-chevron-right"></i></button></div>'), s = p.find("[data-act='datepicker']"), o = p.find(".date-range-selector"), "daily" === u.dateRangeType && ((n = function(t) {
            u.filterParams.start_date === moment().format(u._inputDateFormat) ? t.html(u.customLanguage.today) : u.filterParams.start_date === moment().subtract(1, "days").format(u._inputDateFormat) ? t.html(u.customLanguage.yesterday) : u.filterParams.start_date === moment().add(1, "days").format(u._inputDateFormat) ? t.html(u.customLanguage.tomorrow) : t.html(moment(u.filterParams.start_date).format("Do MMMM YYYY"))
        })(s), s.datepicker({
            format: u._inputDateFormat,
            autoclose: !0,
            todayHighlight: !0,
            language: "custom"
        }).on("changeDate", function(t) {
            var a = moment(t.date).format(u._inputDateFormat);
            u.filterParams.start_date = a, u.filterParams.end_date = a, n(s), f(m, u)
        }), o.click(function() {
            var t = $(this).attr("data-act"),
                a = "";
            "next" === t ? a = moment(u.filterParams.start_date).add(1, "days").format(u._inputDateFormat) : "prev" === t && (a = moment(u.filterParams.start_date).subtract(1, "days").format(u._inputDateFormat)), u.filterParams.start_date = a, u.filterParams.end_date = a, n(s), f(m, u)
        })), "monthly" === u.dateRangeType && ((l = function(t) {
            t.html(moment(u.filterParams.start_date).format("MMMM YYYY"))
        })(s), s.datepicker({
            format: "YYYY-MM",
            viewMode: "months",
            minViewMode: "months",
            autoclose: !0,
            language: "custom"
        }).on("changeDate", function(t) {
            var a = moment(t.date).format(u._inputDateFormat),
                e = moment(a).daysInMonth(),
                o = moment(a).format("YYYY-MM");
            u.filterParams.start_date = o + "-01", u.filterParams.end_date = o + "-" + e, l(s), f(m, u)
        }), o.click(function() {
            var t, a, e, o, n = $(this).attr("data-act"),
                r = moment(u.filterParams.start_date),
                i = moment(u.filterParams.end_date);
            "next" === n ? (e = (t = r.add(1, "months")).daysInMonth(), r = (o = t.format("YYYY-MM")) + "-01", i = o + "-" + e) : "prev" === n && (e = (a = r.subtract(1, "months")).daysInMonth(), r = (o = a.format("YYYY-MM")) + "-01", i = o + "-" + e), u.filterParams.start_date = r, u.filterParams.end_date = i, l(s), f(m, u)
        })), "yearly" === u.dateRangeType && ((r = function(t) {
            t.html(moment(u.filterParams.start_date).format("YYYY"))
        })(s), s.datepicker({
            format: "YYYY-MM",
            viewMode: "years",
            minViewMode: "years",
            autoclose: !0,
            language: "custom"
        }).on("changeDate", function(t) {
            var a = moment(t.date).format(u._inputDateFormat),
                e = moment(a).format("YYYY");
            u.filterParams.start_date = e + "-01-01", u.filterParams.end_date = e + "-12-31", r(s), f(m, u)
        }), o.click(function() {
            var t = $(this).attr("data-act"),
                a = moment(u.filterParams.start_date),
                e = moment(u.filterParams.end_date);
            "next" === t ? (a = a.add(1, "years").format(u._inputDateFormat), e = e.add(1, "years").format(u._inputDateFormat)) : "prev" === t && (a = a.subtract(1, "years").format(u._inputDateFormat), e = e.subtract(1, "years").format(u._inputDateFormat)), u.filterParams.start_date = a, u.filterParams.end_date = e, r(s), f(m, u)
        })), "weekly" === u.dateRangeType && ((i = function(t) {
            var a = moment(u.filterParams.start_date).format("Do MMM"),
                e = moment(u.filterParams.end_date).format("Do MMM, YYYY");
            s.datepicker({
                format: "YYYY-MM-DD",
                autoclose: !0,
                calendarWeeks: !0,
                language: "custom",
                weekStart: AppHelper.settings.firstDayOfWeek
            }), t.html(a + " - " + e)
        })(s), o.click(function() {
            var t = $(this).attr("data-act"),
                a = moment(u.filterParams.start_date),
                e = moment(u.filterParams.end_date);
            "next" === t ? (a = a.add(7, "days").format(u._inputDateFormat), e = e.add(7, "days").format(u._inputDateFormat)) : "prev" === t && (a = a.subtract(7, "days").format(u._inputDateFormat), e = e.subtract(7, "days").format(u._inputDateFormat)), u.filterParams.start_date = a, u.filterParams.end_date = e, i(s), f(m, u)
        }), s.datepicker({
            format: u._inputDateFormat,
            autoclose: !0,
            calendarWeeks: !0,
            language: "custom",
            weekStart: AppHelper.settings.firstDayOfWeek
        }).on("show", function() {
            $(".datepicker").addClass("week-view"), $(".datepicker-days").find(".active").siblings(".day").addClass("active")
        }).on("changeDate", function(t) {
            var a = getWeekRange(t.date);
            u.filterParams.start_date = a.firstDateOfWeek, u.filterParams.end_date = a.lastDateOfWeek, i(s), f(m, u)
        }))), void 0 !== u.checkBoxes[0] && (c = [], v = d = "", $.each(u.checkBoxes, function(t, a) {
            var e = "",
                o = "";
            v = a.name, a.isChecked && (e = " checked", o = " active", c.push(a.value)), d += '<label class="btn btn-default ' + o + '">', d += '<input type="checkbox" name="' + a.name + '" value="' + a.value + '" autocomplete="off" ' + e + ">" + a.text, d += "</label>"
        }), u.filterParams[v] = c, h('<div class="mr15 DTTT_container"><div class="btn-group filter" data-act="checkbox" data-toggle="buttons">' + d + "</div></div>"), p.find("[data-act='checkbox']").click(function() {
            var e = $(this);
            setTimeout(function() {
                var t = [],
                    a = "";
                e.parent().find("input:checkbox").each(function() {
                    a = $(this).attr("name"), $(this).is(":checked") && t.push($(this).val())
                }), u.filterParams[a] = t, f(m, u)
            })
        })), void 0 !== u.multiSelect[0] && $.each(u.multiSelect, function(t, o) {
            var n = "",
                r = [];
            $.each(o.options, function(t, a) {
                var e = "";
                a.isChecked && (e = " active", r.push(a.value)), n += '<li class="list-group-item clickable ' + e + '" data-name="' + o.name + '" data-value="' + a.value + '">', n += a.text, n += "</li>"
            }), n = "<ul class='list-group dropdown-menu' data-act='multiselect'>" + n + "</ul>", u.filterParams[o.name] = r;
            var a = '<div class="mr15 DTTT_container"><span class="dropdown inline-block filter-multi-select"><button class="btn btn-default dropdown-toggle " type="button" data-toggle="dropdown" aria-expanded="true">' + o.text + ' <span class="caret"></span> </button>' + n + "</span></div>";
            h(a), p.find("[data-name='" + o.name + "']").click(function() {
                var e = $(this);
                return e.toggleClass("active"), setTimeout(function() {
                    var t = [],
                        a = "";
                    e.parent().find("li").each(function() {
                        a = $(this).attr("data-name"), $(this).hasClass("active") && t.push($(this).attr("data-value"))
                    }), u.filterParams[a] = t, f(m, u)
                }), !1
            })
        }), void 0 !== u.radioButtons[0] && (g = "", $.each(u.radioButtons, function(t, a) {
            var e = "",
                o = "";
            a.isChecked && (e = " checked", o = " active", u.filterParams[a.name] = a.value), g += '<label class="btn btn-default ' + o + '">', g += '<input type="radio" name="' + a.name + '" value="' + a.value + '" autocomplete="off" ' + e + ">" + a.text, g += "</label>"
        }), h('<div class="mr15 DTTT_container"><div class="btn-group filter" data-act="radio" data-toggle="buttons">' + g + "</div></div>"), p.find("[data-act='radio']").click(function() {
            var t = $(this);
            setTimeout(function() {
                t.parent().find("input:radio").each(function() {
                    $(this).is(":checked") && (u.filterParams[$(this).attr("name")] = $(this).val())
                }), f(m, u)
            })
        })), void 0 !== u.singleDatepicker[0] && $.each(u.singleDatepicker, function(t, a) {
            var o = " ",
                n = "",
                r = "";
            a.options || (a.options = []), a.options.push({
                value: "show-date-picker",
                text: AppLanugage.custom
            }), $.each(a.options, function(t, a) {
                var e = "";
                a.isSelected && (e = "active", n = a.value, r = a.text), o += '<div class="list-group-item ' + e + '" data-value="' + a.value + '">' + a.text + "</div>"
            }), r || (r = "- " + a.defaultText + " -", o = '<div class="list-group-item active" data-value="">' + r + "</div>" + o), a.name && (u.filterParams[a.name] = n);

            function e(t) {
                u.filterParams[a.name] = t, f(m, u)
            }

            function i(t) {
                return t + "<i class='ml10 fa fa-caret-down text-off'></i>"
            }
            var s = '<div class="datepicker-custom-list list-group mb0">' + o + "</div>",
                l = '<div class="mr15 DTTT_container"><button name="' + a.name + '" class="btn datepicker-custom-selector">' + i(r) + "</button></div>";
            h(l);
            var d = p.find("[name='" + a.name + "']"),
                c = void 0 !== a.options[1];
            d.datepicker({
                format: u._inputDateFormat,
                autoclose: !0,
                todayHighlight: !0,
                language: "custom",
                weekStart: AppHelper.settings.firstDayOfWeek,
                orientation: "bottom"
            }).on("show", function() {
                c && ($(".datepicker-days, .datepicker-months, .datepicker-years, .datepicker-decades, .table-condensed").hide(), $(".datepicker-custom-list").show(), $(".datepicker-custom-list").length || ($(".datepicker").append(s), $(".datepicker .list-group-item").click(function() {
                    $(".datepicker .list-group-item").removeClass("active"), $(this).addClass("active");
                    var t = $(this).attr("data-value");
                    "show-date-picker" === t ? ($(".datepicker-custom-list, .datepicker-months, .datepicker-years, .datepicker-decades, .table-condensed").hide(), $(".datepicker-days, .table-condensed").show()) : ($(".datepicker").hide(), moment(t, u._inputDateFormat).isValid() && (t = moment(t, u._inputDateFormat).format(u._inputDateFormat)), d.html(i($(this).html())), e(t))
                })))
            }).on("changeDate", function(t) {
                d.html(i(moment(t.date, u._inputDateFormat).format("Do MMMM YYYY"))), e(moment(t.date, u._inputDateFormat).format(u._inputDateFormat))
            })
        }), void 0 !== u.rangeDatepicker[0] && $.each(u.rangeDatepicker, function(t, a) {
            var e = a.startDate || {},
                o = a.endDate || {},
                n = !!a.showClearButton,
                r = '<i class="fa fa-calendar"></i>',
                i = e.value ? moment(e.value, u._inputDateFormat).format("Do MMMM YYYY") : r,
                s = o.value ? moment(o.value, u._inputDateFormat).format("Do MMMM YYYY") : r;
            u.filterParams[e.name] = e.value, u.filterParams[o.name] = o.value;

            function l(t, a) {
                u.filterParams[t] = a, f(m, u)
            }
            h('<div class="mr15 DTTT_container"><div class="input-daterange input-group"><button class="btn btn-default form-control" name="' + e.name + '" data-date="' + e.value + '">' + i + '</button><span class="input-group-addon">-</span><button class="btn btn-default form-control" name="' + o.name + '" data-date="' + o.value + '">' + s + "</div></div>");
            var d = p.find(".input-daterange"),
                c = d.find("button").toArray();
            d.datepicker({
                format: "yyyy-mm-dd",
                autoclose: !0,
                todayHighlight: !0,
                language: "custom",
                weekStart: AppHelper.settings.firstDayOfWeek,
                orientation: "bottom",
                inputs: c
            }).on("changeDate", function(t) {
                var a = moment(t.date, u._inputDateFormat).format(u._inputDateFormat);
                u.filterParams[e.name] || (u.filterParams[e.name] = a), u.filterParams[o.name] || (u.filterParams[o.name] = a), l($(t.target).attr("name"), a), $(c[0]).html(moment(u.filterParams[e.name], u._inputDateFormat).format("Do MMMM YYYY")), $(c[1]).html(moment(u.filterParams[o.name], u._inputDateFormat).format("Do MMMM YYYY"))
            }).on("show", function() {
                n && ($(".datepicker-clear-selection").show(), $(".datepicker-clear-selection").length || ($(".datepicker").append("<div class='datepicker-clear-selection p5 clickable text-center'>" + AppLanugage.clear + "</div>"), $(".datepicker .datepicker-clear-selection").click(function() {
                    u.filterParams[e.name] = "", l(o.name, ""), $(c[0]).html(r), $(c[1]).html(r), $(".datepicker").hide()
                })))
            })
        }), void 0 !== u.filterDropdown[0] && (g = "", $.each(u.filterDropdown, function(t, o) {
            var n = "",
                r = "",
                i = [];
            $.each(o.options, function(t, a) {
                var e = "";
                a.isSelected && (e = "selected", r = a.id), o.showHtml ? i.push({
                    id: a.id,
                    text: a.text
                }) : n += "<option " + e + ' value="' + a.id + '">' + a.text + "</option>"
            }), o.name && (u.filterParams[o.name] = r);
            var a = '<select class="' + o.class + '" name="' + o.name + '">' + n + "</select>";
            o.showHtml && (a = '<input class="' + o.class + '" name="' + o.name + '" />'), h('<div class="mr15 DTTT_container">' + a + "</div>");
            var e = p.find("[name='" + o.name + "']");
            void 0 !== window.Select2 && (o.showHtml ? e.select2({
                data: i,
                escapeMarkup: function(t) {
                    return t
                }
            }) : e.select2()), e.change(function() {
                var t = $(this),
                    a = t.attr("name"),
                    e = t.val();
                u.filterParams[a] = e, o.dependent && o.dependent.length && b(a, e, u.filterDropdown, p, u.filterParams), f(m, u)
            })
        }));
        var b = function(o, r, t, i, s) {
            $.each(t, function(t, a) {
                var n, e;
                a.dependency && a.dependency.length && -1 !== a.dependency.indexOf(o) && (n = i.find("select[name=" + a.name + "]"), (a.selfDependency && !r || r) && a.dataSource ? $.ajax({
                    url: a.dataSource,
                    data: s,
                    type: "POST",
                    dataType: "json",
                    success: function(t) {
                        var e, o;
                        t && t.length && (o = e = "", $.each(t, function(t, a) {
                            t || (o = a.id), e += "<option value='" + a.id + "'>" + a.text + "</option>"
                        }), n.html(e), n.select2("val", o))
                    }
                }) : (e = n.find("option:first"), n.html("<option value='" + e.val() + "'>" + e.html() + "</option>"), n.select2("val", e.val())), e = n.find("option:first"), s[a.name] = e.val())
            })
        }
    };

function encodeAjaxPostData(t) {
    return t = replaceAll("=", "~", t), t = replaceAll("&", "^", t)
}

function replaceAll(t, a, e) {
    return e.replace(new RegExp(t, "g"), a)
}
"undefined" != typeof TableTools && (TableTools.DEFAULTS.sSwfPath = AppHelper.assetsDirectory + "js/datatable/TableTools/swf/copy_csv_xls_pdf.swf"),
    function(g) {
        g.fn.appTable = function(t) {
            var a = +AppHelper.settings.displayLength;
            !isNaN(a) && a || (a = 10);
            var e = !1;
            "1" === AppHelper.settings.disableResponsiveDataTable ? e = !1 : "1" !== AppHelper.settings.disableResponsiveDataTableForMobile && window.outerWidth < 800 && (e = !0);
            var o = {
                    source: "",
                    xlsColumns: [],
                    pdfColumns: [],
                    columns: [],
                    order: [
                        [0, "asc"]
                    ],
                    hideTools: !1,
                    displayLength: a,
                    dateRangeType: "",
                    checkBoxes: [],
                    multiSelect: [],
                    radioButtons: [],
                    filterDropdown: [],
                    singleDatepicker: [],
                    rangeDatepicker: [],
                    stateSave: !0,
                    isMobile: window.outerWidth < 800,
                    responsive: e,
                    stateDuration: 5184e3,
                    columnShowHideOption: !0,
                    tableRefreshButton: !1,
                    filterParams: {
                        datatable: !0
                    },
                    onDeleteSuccess: function() {},
                    onUndoSuccess: function() {},
                    onInitComplete: function() {},
                    customLanguage: {
                        noRecordFoundText: AppLanugage.noRecordFound,
                        searchPlaceholder: AppLanugage.search,
                        printButtonText: AppLanugage.print,
                        excelButtonText: AppLanugage.excel,
                        printButtonToolTip: AppLanugage.printButtonTooltip,
                        today: AppLanugage.today,
                        yesterday: AppLanugage.yesterday,
                        tomorrow: AppLanugage.tomorrow
                    },
                    footerCallback: function(t, a, e, o, n) {},
                    rowCallback: function(t, a, e, o) {},
                    summation: "",
                    onRelaodCallback: function() {}
                },
                d = g(this);
            if (!d.is("table")) return console.log("appTable: Element must have to be a table", this), !1;
            var c = g.extend({}, o, t);
            if (c.reload) {
                var u = g(this).dataTable(),
                    n = (n = window.InstanceCollection[g(this).selector]) || c;
                return u.fnReloadAjax(n.filterParams), g(this).data("onRelaodCallback") && g(this).data("onRelaodCallback")(u, n.filterParams), !1
            }
            if (c.newData) {
                var r, u = g(this).dataTable();
                return c.dataId ? ((r = g(this).find("[data-post-id='" + c.dataId + "']")).length || (r = g(this).find("[data-index-id='" + c.dataId + "']")), r.length ? (u.api().row(u.api().row(r.closest("tr")).index()).data(c.newData), u.fnUpdateRow(null, u.api().page())) : u.fnUpdateRow(c.newData)) : c.rowDeleted ? u.fnUpdateRow(c.newData, u.api().page(), !0) : u.fnUpdateRow(c.newData), !1
            }
            c.responsive && d.addClass("nowrap");

            function i(n, r, i) {
                var s = "";
                return s += "<tr " + ("all" === r ? 'data-section="all_pages"' : "") + ">", g.each(n.columns, function(e, t) {
                    var o = "class = 'tf-blank' ",
                        a = " ";
                    n.summation[0] && n.summation[0].column - 1 === e && (a = i, o = "class = 'tf-lable' "), g.each(n.summation, function(t, a) {
                        a.column === e && (o = "class = 'tf-result text-right' ", o += "data-" + r + '-page="' + a.column + '"')
                    }), s += "<th " + o + ">", s += a, s += "</th>"
                }), s += "</tr>"
            }
            var s;
            c.summation && c.summation.length && !c.isMobile && (s = "<tfoot>", s += i(c, "current", AppLanugage.total), s += i(c, "all", AppLanugage.totalOfAllPages), s += "</tfoot>", d.html(s)), c._visible_columns = [], g.each(c.columns, function(t, a) {
                !1 !== a.visible && c._visible_columns.push(t)
            }), c._exportable = c.xlsColumns.length + c.pdfColumns.length + c.printColumns.length, c._firstDayOfWeek = AppHelper.settings.firstDayOfWeek || 0, c._inputDateFormat = "YYYY-MM-DD";
            var l, p = {
                ajax: {
                    url: (c = prepareDefaultFilters(c)).source,
                    type: "POST",
                    data: c.filterParams
                },
                sServerMethod: "POST",
                columns: c.columns,
                bProcessing: !0,
                iDisplayLength: c.displayLength,
                aLengthMenu: [
                    [10, 25, 50, 100, -1],
                    [10, 25, 50, 100, AppLanugage.all]
                ],
                bAutoWidth: !1,
                bSortClasses: !1,
                order: c.order,
                stateSave: c.stateSave,
                responsive: c.responsive,
                fnStateLoadParams: function(t, a) {
                    a && a.search && (a.search.search = "")
                },
                stateDuration: c.stateDuration,
                fnInitComplete: function() {
                    c.onInitComplete(this)
                },
                language: {
                    lengthMenu: "_MENU_",
                    zeroRecords: c.customLanguage.noRecordFoundText,
                    info: "_START_-_END_ / _TOTAL_",
                    sInfo: "_START_-_END_ / _TOTAL_",
                    infoFiltered: "(_MAX_)",
                    search: "",
                    searchPlaceholder: c.customLanguage.searchPlaceholder,
                    sInfoEmpty: "0-0 / 0",
                    sInfoFiltered: "(_MAX_)",
                    sInfoPostFix: "",
                    sInfoThousands: ",",
                    sProcessing: "<div class='table-loader'><span class='loading'></span></div>",
                    oPaginate: {
                        sPrevious: "<i class='fa fa-angle-double-left'></i>",
                        sNext: "<i class='fa fa-angle-double-right'></i>"
                    }
                },
                sDom: "",
                footerCallback: function(t, a, e, o, n) {
                    var i = this;
                    if (c.summation) {
                        var s = i.api().page.info(),
                            r = "",
                            l = "",
                            d = "";
                        if (!s.recordsTotal) return g(i).find("tfoot").hide(), !1;
                        g(i).find("tfoot").show(), g.each(c.summation, function(t, a) {
                            var e = calculateDatatableTotal(i, a.column, function(t) {
                                return t && !t.startsWith("<b>") ? "currency" === a.dataType ? unformatCurrency(t) : "time" === a.dataType ? moment.duration(t).asSeconds() : "number" === a.dataType ? unformatCurrency(t) : t : 0
                            }, !0);
                            "currency" === a.dataType ? e = toCurrency(e, a.currencySymbol) : "time" === a.dataType ? e = secondsToTimeFormat(e) : "number" === a.dataType && (e = toCurrency(e, "none"));
                            var o, n, r = u.column(a.column).header();
                            r && (l += "<div class='box'><div class='box-content'>" + g(r).html() + "</div><div class='box-content text-right'>" + e + "</div></div>"), g(i).find("[data-current-page=" + a.column + "]").html(e), 1 < s.pages ? (g(i).find("[data-section='all_pages']").show(), o = calculateDatatableTotal(i, a.column, function(t) {
                                return t && !t.startsWith("<b>") ? "currency" === a.dataType ? unformatCurrency(t) : "time" === a.dataType ? moment.duration(t).asSeconds() : "number" === a.dataType ? unformatCurrency(t) : t : 0
                            }), "currency" === a.dataType ? o = toCurrency(o, a.currencySymbol) : "time" === a.dataType ? o = secondsToTimeFormat(o) : "number" === a.dataType && (o = toCurrency(o, "none")), (n = u.column(a.column).header()) && (d += "<div class='box'><div class='box-content'>" + g(n).html() + "</div><div class='box-content text-right'>" + o + "</div></div>"), g(i).find("[data-all-page=" + a.column + "]").html(o)) : g(i).find("[data-section='all_pages']").hide()
                        }), c.isMobile && (l && (r += "<div class='box'><div class='box-content strong'>" + AppLanugage.total + "</div></div>" + l), d && (r += "<div class='box'><div class='box-content strong'>" + AppLanugage.totalOfAllPages + "</div></div>" + d), g(".summation-section").html(r))
                    }
                    c.footerCallback(t, a, e, o, n, i)
                },
                fnRowCallback: function(t, a, e, o) {
                    c.rowCallback(t, a, e, o)
                }
            };
            AppHelper.userId && (p.stateSaveParams = function(t, a) {
                -1 === t.sInstance.indexOf("-user-ref-") && (t.sInstance += "-user-ref-" + AppHelper.userId)
            }, p.stateLoadCallback = function(t) {
                -1 === t.sInstance.indexOf("-user-ref-") && (t.sInstance += "-user-ref-" + AppHelper.userId);
                try {
                    return JSON.parse((-1 === t.iStateDuration ? sessionStorage : localStorage).getItem("DataTables_" + t.sInstance + "_" + location.pathname))
                } catch (t) {}
            }), c.hideTools || (p.sDom = "<'datatable-tools'<'col-md-2 toolbar-left-top'l><'col-md-10 custom-toolbar'f>r>t<'datatable-tools clearfix'<'col-md-3'i><'col-md-9'p>>"), c._exportable && (l = [], c.xlsColumns.length && l.push({
                extend: "excelHtml5",
                footer: !0,
                text: c.customLanguage.excelButtonText,
                exportOptions: {
                    columns: ":visible:not(.option)"
                },
                customize: function(t) {
                    var a, e, o, n, r;
                    d.find("[data-section='all_pages']") && "none" !== d.find("[data-section='all_pages']").css("display") && (a = t.xl.worksheets["sheet1.xml"], e = g(a.childNodes[0].childNodes[1]), o = parseInt(e.find("row:last-child").attr("r")) + 1, n = 0, r = '<row r="' + o + '">', d.find("[data-section='all_pages'] th").each(function() {
                        g(this).text() && (r += '<c t="inlineStr" r="' + "abcdefghijklmnopqrstuvwxyz" [n].toUpperCase() + o + '" s="2">', r += "<is>", r += "<t>" + g(this).text() + "</t>", r += "</is>", r += "</c>"), n += 1
                    }), r += "</row>", a.childNodes[0].childNodes[1].innerHTML = a.childNodes[0].childNodes[1].innerHTML + r)
                }
            }), c.pdfColumns.length && l.push({
                extend: "pdfHtml5",
                exportOptions: {
                    columns: ":visible:not(.option)"
                }
            }), c.printColumns.length && l.push({
                extend: "print",
                autoPrint: !1,
                text: c.customLanguage.printButtonText,
                footer: !0,
                exportOptions: {
                    columns: ":visible:not(.option)"
                },
                customize: function(t) {
                    var a;
                    g(t.document.body).closest("html").addClass("dt-print-view"), d.find("[data-section='all_pages']") && "none" !== d.find("[data-section='all_pages']").css("display") && (a = d.find("[data-section='all_pages']").clone(), g(t.document.body).find("tfoot").append(a))
                },
                customizeData: function(t, a, e) {}
            }), c.hideTools || (p.sDom = "<'datatable-tools'<'col-md-2 toolbar-left-top'l><'col-md-10 custom-toolbar'f<'datatable-export DTTT_container'B>>r>t<'datatable-tools clearfix'<'col-md-3'<'summation-section'> i><'col-md-9'p>>"), p.buttons = l);
            var m, f = d.dataTable(p),
                h = d.closest(".dataTables_wrapper");
            h.find(".DTTT_button_print").tooltip({
                placement: "bottom",
                container: "body"
            }), h.find("select").select2({
                minimumResultsForSearch: -1
            }), c.columnShowHideOption && (m = d.attr("id"), u = d.DataTable(), h.find(".toolbar-left-top").append('<div class="DTTT_container pull-left"><button class="btn btn-default column-show-hide-popover ml15" data-container="body" data-toggle="popover" data-placement="bottom"><i class="fa fa-eye-slash"></button></div>'), h.find(".column-show-hide-popover").popover({
                html: !0,
                content: function() {
                    var o = "";
                    return g.each(c.columns, function(t, a) {
                        var e;
                        !1 !== a.visible && (e = "", u.column(t).visible() || (e = "active"), o += "<li class='" + e + " list-group-item clickable toggle-table-column' data-column='" + t + "'>" + a.title + "</li>")
                    }), "<ul class='list-group' data-table='" + m + "'>" + o + "</ul>"
                }
            }), h.find(".column-show-hide-popover").on("shown.bs.popover", function() {
                g(".toggle-table-column").on("click", function() {
                    var t = g(this).closest(".list-group").attr("data-table"),
                        a = g("#" + t).DataTable().column(g(this).attr("data-column"));
                    a && (a.visible(!a.visible()), g(this).toggleClass("active"))
                })
            })), c.tableRefreshButton && (h.find(".toolbar-left-top").append('<div class="DTTT_container pull-left "><button class="btn btn-default at-table-refresh-button ml15"><i class="fa fa-refresh"></i></button></div>'), h.find(".at-table-refresh-button").on("click", function() {
                d.appTable({
                    reload: !0,
                    filterParams: c.filterParams
                })
            })), g("body").hasClass("destroy-popover") || (g("body").addClass("destroy-popover"), g(".destroy-popover").on("click", function(t) {
                var a;
                "popover" === g(t.target).closest("button").attr("data-toggle") || g(t.target).closest(".popover").length || g(t.target).hasClass("editable") || (a = g(".popover.in").attr("id"), g("[aria-describedby=" + a + "]").trigger("click"))
            })), d.data("onRelaodCallback", c.onRelaodCallback), buildFilterDom(c, h, d);

            function v(t, a) {
                var e = a.closest("tr"),
                    o = d.DataTable(),
                    n = a.attr("data-undo"),
                    r = a.attr("data-action-url"),
                    i = a.attr("data-id");
                f.fnDeleteRow(o.row(e).index(), function() {
                    o.page(o.page()).draw("page")
                }, !1);
                var s, l = appAlert.warning(t.message, {
                    duration: 2e4
                });
                c.onDeleteSuccess(t), "0" !== n && (s = {
                    alertSelector: l,
                    url: r,
                    id: i
                }, g('<a class="undo-delete" href="javascript:;"><strong>Undo</strong></a>').insertAfter(g(s.alertSelector).find(".app-alert-message")), g(s.alertSelector).find(".undo-delete").bind("click", function() {
                    g(s.alertSelector).remove(), appLoader.show(), g.ajax({
                        url: s.url,
                        type: "POST",
                        dataType: "json",
                        data: {
                            id: s.id,
                            undo: !0
                        },
                        success: function(t) {
                            appLoader.hide(), t.success && (d.appTable({
                                newData: t.data,
                                rowDeleted: !0
                            }), c.onUndoSuccess(t))
                        }
                    })
                }))
            }
            window.InstanceCollection = window.InstanceCollection || {}, window.InstanceCollection[g(this).selector] = c, g("body").find(d).on("click", "a[data-action=delete]", function(t) {
                deleteHandler(t, v)
            }), g("body").find(d).on("click", "a[data-action=delete-confirmation]", function(t) {
                deleteConfirmationHandler(t, v)
            }), g("body").find(d).on("click", "[data-action=update]", function(t) {
                appLoader.show();
                var a = g(t.currentTarget);
                t.data && t.data.target && (a = t.data.target);
                var e = a.attr("data-action-url");
                g.ajax({
                    url: e,
                    dataType: "json",
                    success: function(t) {
                        t.success ? (g(".dataTable:visible").appTable({
                            newData: t.data,
                            dataId: t.id
                        }), appAlert.success(t.message, {
                            duration: 1e4
                        })) : appAlert.error(t.message), appLoader.hide()
                    }
                })
            }), g.fn.dataTableExt.oApi.getSettings = function(t) {
                return t
            }, g.fn.dataTableExt.oApi.fnReloadAjax = function(e, t) {
                this.fnClearTable(this), this.oApi._fnProcessingDisplay(e, !0);
                var o = this;
                g.ajax({
                    url: e.ajax.url,
                    type: "POST",
                    dataType: "json",
                    data: t,
                    success: function(t) {
                        for (var a = 0; a < t.data.length; a++) o.oApi._fnAddData(e, t.data[a]);
                        e.aiDisplay = e.aiDisplayMaster.slice(), o.fnDraw(o), o.oApi._fnProcessingDisplay(e, !1)
                    }
                })
            }, g.fn.dataTableExt.oApi.fnUpdateRow = function(t, a, e, o) {
                a && this.oApi._fnAddData(t, a), o && this.fnDraw(this), e ? this.oApi._fnPageChange(t, e, !0) : this.fnDraw(this)
            }
        }
    }(jQuery), deleteHandler = function(t, a) {
        appLoader.show();
        var e = $(t.currentTarget);
        t.data && t.data.target && (e = t.data.target);
        var o = e.attr("data-action-url"),
            n = e.attr("data-id"),
            r = e.attr("data-reload-on-success");
        $.ajax({
            url: o,
            type: "POST",
            dataType: "json",
            data: {
                id: n
            },
            success: function(t) {
                t.success ? (a && a(t, e), r && location.reload()) : appAlert.error(t.message), appLoader.hide()
            }
        })
    }, deleteConfirmationHandler = function(t, a) {
        var e = $("#confirmDeleteButton"),
            o = $(t.currentTarget);
        o.each(function() {
            $.each(this.attributes, function() {
                this.specified && this.name.match("^data-") && e.attr(this.name, this.value)
            })
        }), o.attr("data-undo", "0"), e.unbind("click"), e.on("click", {
            target: o
        }, function(t) {
            deleteHandler(t, a)
        }), $("#confirmationModal").modal("show")
    },
    function() {
        var t;
        t = function(o) {
            return a = {
                info: function(t, a) {
                    return this._settings = e(a), this._settings.alertType = "info", n(t), "#" + this._settings.alertId
                },
                success: function(t, a) {
                    return this._settings = e(a), this._settings.alertType = "success", n(t), "#" + this._settings.alertId
                },
                warning: function(t, a) {
                    return this._settings = e(a), this._settings.alertType = "warning", n(t), "#" + this._settings.alertId
                },
                error: function(t, a) {
                    return this._settings = e(a), this._settings.alertType = "error", n(t), "#" + this._settings.alertId
                },
                options: {
                    container: "body",
                    duration: 0,
                    showProgressBar: !0,
                    clearAll: !0,
                    animate: !0
                }
            };

            function e(t) {
                return (t = t || {}).alertId = "app-alert-" + function() {
                    for (var t = "", a = "abcdefghijklmnopqrstuvwxyz0123456789", e = 0; e < 5; e++) t += a.charAt(Math.floor(Math.random() * a.length));
                    return t
                }(), this._settings = o.extend({}, a.options, t)
            }

            function n(t) {
                ! function() {
                    this._settings.clearAll && o("[role='alert']").remove()
                }(), o(this._settings.container).length ? (this._settings.animate && setTimeout(function() {
                    o(".app-alert").animate({
                        opacity: 1,
                        right: "40px"
                    }, 500, function() {
                        o(".app-alert").animate({
                            right: "15px"
                        }, 300)
                    })
                }, 20), o(this._settings.container).prepend(function(t) {
                    var a = "info";
                    return "error" === this._settings.alertType ? a = "danger" : "success" === this._settings.alertType ? a = "success" : "warning" === this._settings.alertType && (a = "warning"), this._settings.animate && (a += " animate"), '<div id="' + this._settings.alertId + '" class="app-alert alert alert-' + a + ' alert-dismissible " role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><div class="app-alert-message">' + t + '</div><div class="progress"><div class="progress-bar progress-bar-' + a + ' hide" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div></div></div>'
                }(t)), function() {
                    {
                        var t, a, e;
                        this._settings.duration && this._settings.showProgressBar && (t = "#" + this._settings.alertId, (a = o(t).find(".progress-bar")).removeClass("hide").width(0), e = "width " + this._settings.duration + "ms ease", a.css({
                            WebkitTransition: e,
                            MozTransition: e,
                            MsTransition: e,
                            OTransition: e,
                            transition: e
                        }), setTimeout(function() {
                            0 < o(t).length && o(t).remove()
                        }, this._settings.duration))
                    }
                }()) : console.log("appAlert: container must be an html selector!")
            }
            var a
        }, window.appAlert = t(window.jQuery)
    }(),
    function() {
        var t;
        t = function(o) {
            return n = {
                show: function(t) {
                    var a = o("#app-loader"); {
                        var e;
                        this._settings = function(t) {
                            {
                                t = t || {}
                            }
                            return this._settings = o.extend({}, n.options, t)
                        }(t), a.length || ((e = o(this._settings.container)).length ? e.append('<div id="app-loader" class="app-loader" style="z-index:' + this._settings.zIndex + ";" + this._settings.css + '"><div class="loading"></div></div>') : console.log("appLoader: container must be an html selector!"))
                    }
                },
                hide: function() {
                    var t = o("#app-loader");
                    t.length && t.remove()
                },
                options: {
                    container: "body",
                    zIndex: "auto",
                    css: ""
                }
            };
            var n
        }, window.appLoader = t(window.jQuery)
    }(),
    function() {
        var t;
        t = function(n) {
            return s = {
                init: function(t) {
                    this._settings = function(t) {
                            t = t || {};
                            return this._settings = n.extend({}, appLoader.options, t)
                        }(t),
                        function(t) {
                            var a = "<div class='app-modal-sidebar hidden-xs'>                                        <div class='app-modal-close'><span>&times;</span></div>                                        <div class='app-moadl-sidebar-scrollbar'>                                            <div class='app-modal-sidebar-area'>                                            </div>                                        </div>                                    </div>",
                                e = "<i class='fa fa-expand expand hidden-xs'></i>";
                            !1 !== t.sidebar && !isMobile() || (a = "", e = "<div class='app-modal-close app-modal-fixed-close-button'><span>&times;</span></div>");
                            var o = "<div class='app-modal loading'>                                <i class='fa fa-compress compress'></i>                                <div class='app-modal-body'>                                    <div class='app-modal-content'>" + e + "<div class='hide app-modal-close'><span>&times;</span></div>                                        <div class='app-modal-content-area'>                                        </div>                                    </div>" + a + "</div>                            </div>";
                            i(), n("body").prepend(o), setTimeout(function() {
                                var t = n(window).height() - 60;
                                n(".app-modal-content-area").prop("scrollHeight") > t && n(".app-modal-content-area").css({
                                    "max-height": t + "px",
                                    "overflow-y": "scroll"
                                }), n.fn.mCustomScrollbar && n(".app-moadl-sidebar-scrollbar").mCustomScrollbar({
                                    setHeight: t,
                                    theme: "minimal-dark",
                                    autoExpandScrollbar: !0
                                })
                            }, 200), n(".expand").click(function() {
                                n(".app-modal").addClass("full-content")
                            }), n(".compress").click(function() {
                                n(".app-modal").removeClass("full-content")
                            }), n(".app-modal-close").click(function() {
                                i()
                            }), n(document).bind("keyup", r), appLoader.show({
                                container: ".app-modal",
                                css: "top:35%; right:48%;"
                            }), appModalXhr = n.ajax({
                                url: t.url || "",
                                data: {},
                                cache: !1,
                                type: "POST",
                                success: function(t) {
                                    var a = n(t);
                                    n(".app-modal-content-area").html(a.find(".app-modal-content").html()), n(".app-modal-sidebar-area").html(a.find(".app-modal-sidebar").html()), a.remove(), n(".app-modal").removeClass("loading"), appLoader.hide()
                                },
                                statusCode: {
                                    404: function() {
                                        s.destroy(), appAlert.error("404: Page not found.")
                                    }
                                },
                                error: function() {
                                    s.destroy(), appAlert.error("500: Internal Server Error.")
                                }
                            })
                        }(this._settings)
                },
                destroy: i,
                options: {
                    url: "",
                    css: "",
                    sidebar: !0
                }
            };

            function r(t) {
                27 === t.keyCode && i()
            }

            function i() {
                n(".app-modal").remove(), n(document).unbind("keyup", r), "undefined" != typeof appModalXhr && appModalXhr.abort()
            }
            var s
        }, window.appContentModal = t(window.jQuery)
    }(),
    function(c) {
        c.fn.appDateRange = function(t) {
            var d = c.extend({}, {
                dateRangeType: "yearly",
                filterParams: {},
                onChange: function(t) {},
                onInit: function(t) {}
            }, t);
            d._inputDateFormat = "YYYY-MM-DD", this.each(function() {
                var t = c(this);
                t.append('<div class="ml15"><button data-act="prev" class="btn btn-default date-range-selector"><i class="fa fa-chevron-left"></i></button><button data-act="datepicker" class="btn btn-default" style="margin: -1px"></button><button data-act="next"  class="btn btn-default date-range-selector"><i class="fa fa-chevron-right"></i></button></div>');
                var o, s, a, l = t.find("[data-act='datepicker']"),
                    e = t.find(".date-range-selector");
                "yearly" === d.dateRangeType ? ((o = function(t) {
                    t.html(moment(d.filterParams.start_date).format("YYYY"))
                })(l), l.datepicker({
                    format: "YYYY-MM",
                    viewMode: "years",
                    minViewMode: "years",
                    autoclose: !0,
                    language: "custom"
                }).on("changeDate", function(t) {
                    var a = moment(t.date).format(d._inputDateFormat),
                        e = moment(a).format("YYYY");
                    d.filterParams.start_date = e + "-01-01", d.filterParams.end_date = e + "-12-31", d.filterParams.year = e, o(l), d.onChange(d.filterParams)
                }), a = moment().format("YYYY"), d.filterParams.start_date = a + "-01-01", d.filterParams.end_date = a + "-12-31", d.filterParams.year = a, d.onInit(d.filterParams), e.click(function() {
                    var t = c(this).attr("data-act"),
                        a = moment(d.filterParams.start_date),
                        e = moment(d.filterParams.end_date);
                    "next" === t ? (a = a.add(1, "years").format(d._inputDateFormat), e = e.add(1, "years").format(d._inputDateFormat)) : "prev" === t && (a = a.subtract(1, "years").format(d._inputDateFormat), e = e.subtract(1, "years").format(d._inputDateFormat)), d.filterParams.start_date = a, d.filterParams.end_date = e, d.filterParams.year = moment(a).format("YYYY"), o(l), d.onChange(d.filterParams)
                })) : "monthly" === d.dateRangeType && ((s = function(t) {
                    t.html(moment(d.filterParams.start_date).format("MMMM YYYY"))
                })(l), l.datepicker({
                    format: "YYYY-MM",
                    viewMode: "months",
                    minViewMode: "months",
                    autoclose: !0,
                    language: "custom"
                }).on("changeDate", function(t) {
                    var a = moment(t.date).format(d._inputDateFormat),
                        e = moment(a).daysInMonth(),
                        o = moment(a).format("YYYY-MM");
                    d.filterParams.start_date = o + "-01", d.filterParams.end_date = o + "-" + e, s(l), d.onChange(d.filterParams)
                }), a = moment().format("YYYY-MM"), d.filterParams.start_date = a + "-01", d.filterParams.end_date = a + "-31", d.filterParams.year = a, d.onInit(d.filterParams), e.click(function() {
                    var t, a, e, o, n = c(this).attr("data-act"),
                        r = moment(d.filterParams.start_date),
                        i = moment(d.filterParams.end_date);
                    "next" === n ? (e = (t = r.add(1, "months")).daysInMonth(), r = (o = t.format("YYYY-MM")) + "-01", i = o + "-" + e) : "prev" === n && (e = (a = r.subtract(1, "months")).daysInMonth(), r = (o = a.format("YYYY-MM")) + "-01", i = o + "-" + e), d.filterParams.start_date = r, d.filterParams.end_date = i, d.filterParams.year = moment(r).format("YYYY-MM"), s(l), d.onChange(d.filterParams)
                }))
            })
        }
    }(jQuery);
var loadFilterView = function(a) {
    a.source && a.targetSelector && $.ajax({
        url: a.source,
        data: a.filterParams,
        cache: !1,
        type: "POST",
        success: function(t) {
            $(a.targetSelector).html(t), appLoader.hide()
        },
        statusCode: {
            404: function() {
                appLoader.hide(), appAlert.error("404: Page not found.", {
                    container: ".modal-body",
                    animate: !1
                })
            }
        },
        error: function() {
            appLoader.hide(), appAlert.error("500: Internal Server Error.", {
                container: ".modal-body",
                animate: !1
            })
        }
    })
};
! function(s) {
    s.fn.appFilters = function(t) {
        appLoader.show();
        var a = {
                source: "",
                targetSelector: "",
                reloadSelector: "",
                dateRangeType: "",
                checkBoxes: [],
                multiSelect: [],
                radioButtons: [],
                filterDropdown: [],
                singleDatepicker: [],
                rangeDatepicker: [],
                isMobile: window.outerWidth < 800,
                filterParams: {
                    customFilter: !0
                },
                search: {
                    show: !1
                },
                customLanguage: {
                    searchPlaceholder: AppLanugage.search,
                    today: AppLanugage.today,
                    yesterday: AppLanugage.yesterday,
                    tomorrow: AppLanugage.tomorrow
                },
                beforeRelaodCallback: function() {},
                afterRelaodCallback: function() {},
                onInitComplete: function() {}
            },
            e = s(this),
            o = e;
        o.append("<div class='custom-toolbar'></div>");
        var n = s.extend({}, a, t);
        if (n.reload) {
            var r = s(this),
                i = window.InstanceCollection[r.selector];
            return r.data("beforeRelaodCallback") && r.data("beforeRelaodCallback")(r, i.filterParams), loadFilterView(i), r.data("afterRelaodCallback") && r.data("afterRelaodCallback")(r, i.filterParams), !1
        }
        n._firstDayOfWeek = AppHelper.settings.firstDayOfWeek || 0, n._inputDateFormat = "YYYY-MM-DD", n = prepareDefaultFilters(n), buildFilterDom(n, o, e), window.InstanceCollection = window.InstanceCollection || {}, (window.InstanceCollection[e.selector] = n).onInitComplete && n.onInitComplete(e, n.filterParams), loadFilterView(n), e.data("beforeRelaodCallback", n.beforeRelaodCallback), e.data("afterRelaodCallback", n.afterRelaodCallback)
    }
}(jQuery), replaceAllString = function(t, a, e) {
        return t.split(a).join(e)
    }, toCurrency = function(t, a) {
        t = "0" == AppHelper.settings.noOfDecimals ? Math.round(parseFloat(t)) + ".00" : parseFloat(t).toFixed(2), a = a || AppHelper.settings.currencySymbol;
        var e = t.replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
        return " " === AppHelper.settings.thousandSeparator && (e = e.replace(",", " ")), "," === AppHelper.settings.decimalSeparator && (e = replaceAllString(e, ".", "_"), e = replaceAllString(e, ",", "."), e = replaceAllString(e, "_", ",")), "none" === a && (a = ""), "0" == AppHelper.settings.noOfDecimals && (e = e.slice(0, -3)), "right" === AppHelper.settings.currencyPosition ? e + "" + a : "0" == e.indexOf("-") ? "-" + a + (e = e.replace("-", "")) : a + "" + e
    }, calculateDatatableTotal = function(t, a, n, e) {
        var o = e ? {
            page: "current"
        } : {};
        return t.api().column(a, o).data().reduce(function(t, a, e, o) {
            return n ? t + n(a) : t + a
        }, 0)
    }, unformatCurrency = function(t) {
        return (t = t.toString()) && (0 != (t = t.replace(/[^0-9.,-]/g, "")).indexOf(".") && 0 != t.indexOf(",") || (t = t.slice(1)), t = +(t = "," === AppHelper.settings.decimalSeparator ? (t = replaceAllString(t, ".", ""), replaceAllString(t, ",", ".")) : replaceAllString(t, ",", ""))), t || 0
    }, secondsToTimeFormat = function(t) {
        var a = parseInt(t, 10),
            e = Math.floor(a / 3600),
            o = Math.floor((a - 3600 * e) / 60),
            n = a - 3600 * e - 60 * o;
        return e < 10 && (e = "0" + e), o < 10 && (o = "0" + o), n < 10 && (n = "0" + n), e + ":" + o + ":" + n
    }, clearAppTableState = function(t) {
        t && setTimeout(function() {
            t.api().state.clear()
        }, 200)
    }, showHideAppTableColumn = function(t, a, e) {
        t.fnSetColumnVis(a, !!e)
    },
    function(o) {
        o.fn.appMention = function(t) {
            var a = o.extend({}, {
                    at: "@",
                    dataType: "json",
                    source: "",
                    data: {}
                }, t),
                e = this;
            o.ajax({
                url: a.source,
                data: a.data,
                dataType: a.dataType,
                method: "POST",
                success: function(t) {
                    t.success && o(e).atwho({
                        at: a.at,
                        data: t.data,
                        insertTpl: "${content}"
                    })
                }
            })
        }
    }(jQuery),
    function(e) {
        e.fn.appMultiSelect = function(t) {
            var r = e.extend({}, {
                text: "",
                options: [],
                onChange: function(t) {},
                onInit: function(t) {}
            }, t);
            this.each(function() {
                var t = e(this),
                    o = "",
                    n = [];
                e.each(r.options, function(t, a) {
                    var e = "";
                    a.isChecked && (e = " active", n.push(a.id)), o += '<li class="list-group-item clickable ' + e + '" data-name="' + r.name + '" data-value="' + a.id + '">', o += a.text, o += "</li>"
                }), o = "<ul class='list-group dropdown-menu' data-act='multiselect'>" + o + "</ul>";
                var a = '<div class="mr15 DTTT_container custom-toolbar"><span class="dropdown inline-block filter-multi-select"><button class="btn btn-default dropdown-toggle " type="button" data-toggle="dropdown" aria-expanded="true">' + r.text + ' <span class="caret"></span> </button>' + o + "</span></div>";
                t.append(a), r.onInit(n), t.find("[data-name='" + r.name + "']").click(function() {
                    var a = e(this);
                    return a.toggleClass("active"), setTimeout(function() {
                        var t = [];
                        a.parent().find("li").each(function() {
                            e(this).hasClass("active") && t.push(e(this).attr("data-value"))
                        }), r.onChange(t)
                    }), !1
                })
            })
        }
    }(jQuery),
    function(f) {
        f.fn.appModifier = function(t) {
            var a = f.extend({}, {
                    actionUrl: "",
                    value: "",
                    actionType: "select2",
                    showbuttons: !1,
                    datepicker: {},
                    select2Option: {},
                    placement: "auto",
                    dataType: "json",
                    onSuccess: function() {}
                }, t),
                e = f(this),
                o = getRandomAlphabet(5),
                n = "";
            a.showbuttons && (n = "<div class='custom-popover-button-area mt10 clearfix'>\n                            <div id='custom-popover-submit-btn-" + o + "' class='col-md-6 pl0 pr5'><button class='btn btn-primary btn-sm w100p'><i class='fa fa-check'></i></button></div>\n                            <div class='col-md-6 pr0 pl5 custom-popover-close-btn'><button class='btn btn-default btn-sm w100p'><i class='fa fa-close'></i></button></div>\n                        </div>");
            var r, i, s, l, d, c = "";
            "select2" === a.actionType ? c = "<input id='" + o + "' value='" + a.value + "' type='text' class='form-control' /> " + n : "date" === a.actionType && (r = getJsDateFormat(), s = (i = a.value.split("-"))[0], l = i[1], d = i[2], c = "<div style='height: 240px;' id='" + o + "'  data-date='" + r.replace("yyyy", s).replace("mm", l).replace("dd", d) + "' data-date-format='" + r + "'></div>");
            var u = "<div class='popover app-popover out' role='tooltip'>\n                                <div class='arrow'></div>\n                                <div class='popover-body'>\n                                    <div class='loader-container inline-loader hide'>\n                                    </div>\n                                    " + c + "\n                                </div>\n                            </div>";
            e.on("shown.bs.popover", function() {
                var t = f(this),
                    a = t.attr("aria-describedby"),
                    e = !1;
                "1" !== t.attr("data-hasppover") && (e = !0, t.attr("data-hasppover", "1"), f(".popover").popover("hide"), setTimeout(function() {
                    t.popover("show"), f(".app-popover").removeClass("out")
                }, 200)), f(".popover").each(function() {
                    f(this).attr("id") !== a || e ? f(this).addClass("out") : f(this).removeClass("out")
                })
            }), e.popover({
                html: !0,
                template: u,
                placement: a.placement,
                content: function() {
                    return " "
                }
            }), e.attr("popover-opened") || e.popover("show");
            var p = f("#" + o);

            function m(a, t, e, o) {
                var n = p.closest(".popover-body").height(),
                    r = p.closest(".popover-body").width();
                p.closest(".popover-body").find(".loader-container").removeClass("hide").css({
                    height: n,
                    width: r
                }), p.closest(".popover-body").find(".custom-popover-button-area").addClass("hide"), p.addClass("hide"), f.ajax({
                    url: e.actionUrl,
                    type: "POST",
                    dataType: e.dataType,
                    data: {
                        value: t
                    },
                    success: function(t) {
                        a.popover("hide"), setTimeout(function() {
                            p.closest(".popover-body").find(".loader-container").addClass("hide"), p.closest(".popover-body").find(".custom-popover-button-area").removeClass("hide"), p.removeClass("hide")
                        }, 200), t.success ? (e.onSuccess(t), o && a.text(o)) : appAlert.error(t.message)
                    }
                })
            }
            "select2" === a.actionType ? a.showbuttons ? p.select2(a.select2Option) : p.select2(a.select2Option).change(function(t) {
                m(e, f(this).val(), a, t.added.text)
            }) : "date" === a.actionType && (a.datepicker.onChangeDate = function(t) {
                m(e, t, a)
            }, setDatePicker("#" + o, a.datepicker)), f("div#custom-popover-submit-btn-" + o).click(function() {
                m(e, p.val(), a)
            }), f(".custom-popover-close-btn").click(function() {
                e.popover("hide")
            }), e.attr("popover-opened", !0)
        }
    }(jQuery);