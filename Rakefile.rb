task :default => :tu

desc "Pruebas unitarias de la clase Fraccionario"
task :tu do
  sh "ruby -I. test/test_fraccionario.rb"
end

