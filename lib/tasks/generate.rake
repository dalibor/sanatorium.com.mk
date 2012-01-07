desc 'Prepare the static site in the ./out/ directory'
task :generate  do
  Dir.mkdir('out') unless File.exist?('out')
  Dir.chdir('out') do
    `wget -m -nH http://localhost:3000`
  end
  `rsync -ruv --exclude=.svn/ --exclude=dispatch* --exclude=500.html --exclude=422.html public/ out/`
end
