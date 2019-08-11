# Ruby 2.6.3
# https://leetcode.com/problems/defanging-an-ip-address/

def defang_i_paddr(address)
  address.gsub(/\./, '[.]')
end
