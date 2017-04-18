def non_duplicate(args)
  args.select { |v| args.count(v) == 1 }
end
