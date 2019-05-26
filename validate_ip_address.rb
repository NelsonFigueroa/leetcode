# Ruby 2.5.0

# https://leetcode.com/problems/validate-ip-address/

def valid_ip_address(ip)

  # Check if input is in IPv4 format
  if /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/.match(ip)
    
    ip.split('.').each do |octet|
      # Octets must be within 0-255 range
      if octet.to_i > 255 || octet.to_i < 0
        return "Neither"
      end

      # Octets should not have leading zeroes
      if /0{1,2}\d*/.match(octet)
        return "Neither" unless octet == '0' # don't return 'neither' if it's a single zero.
      end
    end
    return "IPv4"
  end

  # Check if input is in IPv6 format
  if /^[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}$/.match(ip)

    ip.split(':').each do |segment|
      # Segments must be between 0 - FFFF
      if segment.hex > 65535 || segment.hex < 0
        return "Neither"
      end
    end
    return "IPv6"
  end

  # No matches to IPv4 or IPv6
  return "Neither"
end
