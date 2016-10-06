require 'diamond'

RSpec.describe "Diamond" do 
# # 1 ->
#A 1,1
#
# # 2 ->
# A  2,1,A
#B B 2,2,B
# A  2,1,A
#
#
# # 0 -> ""
#"" 0, 0
#
# # 3 -> ""
#  A   3, 1
# B B  3, 2
#C   C 3, 3
# B B  3, 2
#  A   3, 1

# # 4 ""
#   A    4, 1
#  B B   4, 2
# C   C  4, 3
#D     D 4, 4
# C   C  4, 3
#  B B   4, 2
#   A    4, 1

# # 5 ""
#     A     5, 1
#    B B    5, 2
#   C   C   5, 3
#  D     D  5, 4
# E       E 5, 5
#  D     D  5, 4
#   C   C   5, 3
#    B B    5, 2
#     A     5, 1




  it 'of size 1, prints only A' do
    expect(Diamond.of(1)).to eq("A")
  end


end
