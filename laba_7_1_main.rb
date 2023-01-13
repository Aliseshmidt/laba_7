# frozen_string_literal: true

# class for working with files
class Files
  def self.rewrite(filename1, file2, filename2)
    arr = File.readlines(filename1).map(&:chomp)
    arr.each_index { |i| arr[i] == 'a' ? file2.puts(arr[i + 1]) : next }
    file2.close
    File.readlines(filename2).map(&:chomp)
  end
end
