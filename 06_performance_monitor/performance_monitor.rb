def measure(iter=1)
  start_time = Time.now
  iter.times { yield }
  (Time.now - start_time) / iter
end