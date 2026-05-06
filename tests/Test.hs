import PortfolioCore
import DomainReview

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 86 84 14 9 10
  expect (score signalcase_1 == 195)
  expect (classify signalcase_1 == "accept")
  let signalcase_2 = Signal 87 104 16 14 6
  expect (score signalcase_2 == 166)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 81 102 10 24 4
  expect (score signalcase_3 == 88)
  expect (classify signalcase_3 == "review")
  let domainReview = ReviewItem 50 25 19 56
  expect (reviewScore domainReview == 124)
  expect (reviewLane domainReview == "watch")
