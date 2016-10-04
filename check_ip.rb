class CheckIp

	attr_accessor :ip_to_check, :domain_to_check

	def initialize domain, ip
		@ip_to_check = ip
		@domain_to_check = domain
		while true
			p = `ping -c 1 #{domain_to_check}`
			if /#{ip_to_check}:/ =~ p
				play_sound 
				print '.'
			else
				print 'F'
			end
			sleep 1
		end

	end
	def play_sound
		`say "internet protocol has changed successfully!!!"`
	end
end

print 'Enter domain (example.com): '
domain = gets.chomp
print 'Enter ip that should be assign to domain(123.123.123.123): '
ip = gets.chomp

CheckIp.new domain, ip