(function(a){a.fn.plainclick=function(d){return this[d?"bind":"trigger"]("plainclick",d)};a.fn.ctrlclick=function(d){return this[d?"bind":"trigger"]("ctrlclick",d)};a.fn.shiftclick=function(d){return this[d?"bind":"trigger"]("shiftclick",d)};a.fn.altclick=function(d){return this[d?"bind":"trigger"]("altclick",d)};a.fn.ctrlaltclick=function(d){return this[d?"bind":"trigger"]("ctrlaltclick",d)};a.fn.ctrlshiftclick=function(d){return this[d?"bind":"trigger"]("ctrlshiftclick",d)};a.fn.altshiftclick=function(d){return this[d?"bind":"trigger"]("altshiftclick",d)};a.fn.ctrlaltshiftclick=function(d){return this[d?"bind":"trigger"]("ctrlaltshiftclick",d)};a.event.special.plainclick=a.event.special.ctrlclick=a.event.special.altclick=a.event.special.shiftclick=a.event.special.ctrlaltclick=a.event.special.ctrlshiftclick=a.event.special.altshiftclick=a.event.special.ctrlaltshiftclick={setup:function(){a.event.add(this,c,b,{})},teardown:function(){a.event.remove(this,c,b)}};var c="click";function b(d){if(d.ctrlKey){if(d.shiftKey){if(d.altKey||d.originalEvent.altKey){d.type="ctrlaltshiftclick"}else{d.type="ctrlshiftclick"}}else{if(d.altKey||d.originalEvent.altKey){d.type="ctrlaltclick"}else{d.type="ctrlclick"}}}else{if(d.altKey||d.originalEvent.altKey){if(d.shiftKey){d.type="altshiftclick"}else{d.type="altclick"}}else{if(d.shiftKey){d.type="shiftclick"}else{d.type="plainclick"}}}return a.event.handle.call(this,d)}})(jQuery);