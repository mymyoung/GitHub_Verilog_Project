module counter (
    input clk,
    input reset,
    output reg [3:0] count
);

// 비동기 리셋이 있는 4비트 카운터
always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else
        count <= count + 1;
end

endmodule