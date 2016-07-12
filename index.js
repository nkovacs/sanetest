var sane=require('sane');

var watcher = sane('test/', {glob: ['**/*.txt']});
watcher.on('ready', function () { console.log('ready') });
watcher.on('change', function (filepath, root, stat) { console.log('file changed', filepath); });
watcher.on('add', function (filepath, root, stat) { console.log('file added', filepath); });
watcher.on('delete', function (filepath, root) { console.log('file deleted', filepath); });
