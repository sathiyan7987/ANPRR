classdef unittest<matlab.unittest.TestCase
    
    properties
    end
    
    methods(Test)
        function testRealSolution(testCase)
            actSolution = quadraticSolver(1,-3,2);
            exSolution =[2,1];
            testCase.verifyEqual(actSolution,expSolution,'AbsTol',sqrt(eps));
    end
    
end