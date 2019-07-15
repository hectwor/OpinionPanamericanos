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
public class ScoreStrategy implements ValueStrategy{

    private int enter;

    public ScoreStrategy(int enter) {
        this.enter = enter;
    }
    
    
    
    @Override
    public int evaluate() {
        if(enter<20){
            return 1;
        }else if(enter<40){
            return 2;
        }else if(enter<60){
            return 3;
        }else if(enter<80){
            return 4;
        }else if(enter<100){
            return 5;
        }else{
            return 5;
        }
    }
    
}
