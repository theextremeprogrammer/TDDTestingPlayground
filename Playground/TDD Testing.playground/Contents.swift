import Foundation
import XCTest
import TestingFrameworksWrapper
import Quick
import Nimble

enum Throw {
    case rock, paper, scissors
}

enum GameResult: Equatable {
    case player1Wins, player2Wins, tie
}

struct RPSGame {
    func play(_ p1Throw: Throw, _ p2Throw: Throw) -> GameResult? {
        if (p1Throw == p2Throw) {
            return .tie
        }

        if
            p1Throw == .rock && p2Throw == .scissors ||
            p1Throw == .paper && p2Throw == .rock ||
            p1Throw == .scissors && p2Throw == .paper
        {
            return .player1Wins
        }

        return .player2Wins
    }
}

class RPSSpec: QuickSpec {
    override func spec() {
        describe("rock, paper, scissors game") {
            it("RvS") {
                expect(RPSGame().play(.rock, .scissors)).to(equal(GameResult.player1Wins))
            }

            it("SvR") {
                expect(RPSGame().play(.scissors, .rock)).to(equal(GameResult.player2Wins))
            }

            it("PvR") {
                expect(RPSGame().play(.paper, .rock)).to(equal(GameResult.player1Wins))
            }

            it("RvP") {
                expect(RPSGame().play(.rock, .paper)).to(equal(GameResult.player2Wins))
            }

            it("SvP") {
                expect(RPSGame().play(.scissors, .paper)).to(equal(GameResult.player1Wins))
            }

            it("PvS") {
                expect(RPSGame().play(.paper, .scissors)).to(equal(GameResult.player2Wins))
            }

            it("RvR") {
                expect(RPSGame().play(.rock, .rock)).to(equal(GameResult.tie))
            }

            it("PvP") {
                expect(RPSGame().play(.paper, .paper)).to(equal(GameResult.tie))
            }

            it("SvS") {
                expect(RPSGame().play(.scissors, .scissors)).to(equal(GameResult.tie))
            }
        }
    }
}

RPSSpec.defaultTestSuite.run()
