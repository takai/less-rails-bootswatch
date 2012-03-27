require "bundler/gem_tasks"

ORIGIN = 'https://github.com/thomaspark/bootswatch.git'
BOOTSWATCH_DIR = 'tmp/bootswatch'

STYLESHEETS_DIR = 'vendor/frameworks/stylesheets/bootswatch'

task :default => [:update]

file BOOTSWATCH_DIR do
  sh "git clone -b gh-pages #{ORIGIN} #{BOOTSWATCH_DIR}"
end

task :pull => BOOTSWATCH_DIR do
  sh "cd #{BOOTSWATCH_DIR} && git pull"
end

desc "Update LESS files if needed."
task :update => :pull do
  base_len = BOOTSWATCH_DIR.length
  Dir.glob("#{BOOTSWATCH_DIR}/**/*.less").each do |src|
    begin
      dst = STYLESHEETS_DIR + src[base_len..src.length]
      dir = File.dirname(dst)

      next unless uptodate? src, [dst]

      mkdir_p(dir) unless Dir.exist?(dir)

      puts "copy #{src} -> #{dst}"

      src_file = File.open(src, 'r')
      dst_file = File.open(dst, 'w')

      src_file.each do |l|
        dst_file.print(l.gsub('../img', './twitter/bootstrap'))
      end
    ensure
      src_file.close if src_file
      dst_file.close if dst_file
    end
  end
end

desc "Delete untracked files"
task :clean do
  rm_rf BOOTSWATCH_DIR
  rm_rf STYLESHEETS_DIR, :verbose => false
end
