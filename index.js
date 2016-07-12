var sane=require('sane');

var watcher = sane('test/', {glob: ['**/*.txt']});
watcher.on('ready', function () { console.log('ready') });
watcher.on('change', function (filepath, root, stat) { console.log('\tfile changed', filepath); });
watcher.on('add', function (filepath, root, stat) { console.log('\tfile added', filepath); });
watcher.on('delete', function (filepath, root) { console.log('\tfile deleted', filepath); });
