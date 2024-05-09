import Foundation

var likeCount: Double = 5

likeCount += 1
likeCount *= 5

// Operator priority
likeCount = likeCount - 1 * 2

print(likeCount)

var User = true

if User && likeCount < 27
{
    print("succcess")
}
