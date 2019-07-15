/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Strategy;

/**
 *
 * @author hecto
 */
public class RangeStrategy implements ValueStrategy{
    
    private int start;
    private int end;

    public RangeStrategy(int start, int end) {
        this.start = start;
        this.end = end;
    }
    
    
    @Override
    public int evaluate() {
        int value = (end+start)/2;
        if(value<20){
            return 1;
        }else if(value<40){
            return 2;
        }else if(value<60){
            return 3;
        }else if(value<80){
            return 4;
        }else if(value<100){
            return 5;
        }
        return 0;
    }
    
}
