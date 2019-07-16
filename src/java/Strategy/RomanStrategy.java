/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Strategy;

import Interpreter.Context;
import Interpreter.Expression;
import Interpreter.HungredExpression;
import Interpreter.OneExpression;
import Interpreter.TenExpression;
import Interpreter.ThousandExpression;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author hecto
 */
public class RomanStrategy implements ValueStrategy {
    private String roman;

    public RomanStrategy(String roman) {
        this.roman = roman;
    }
    
    @Override
    public int evaluate() {
        Context context = new Context(roman);
        ArrayList<Expression> tree = new ArrayList<Expression>();
        tree.add(new ThousandExpression());
        tree.add(new HungredExpression());
        tree.add(new TenExpression());
        tree.add(new OneExpression());
        
        Iterator<Expression> it = tree.iterator();
        while(it.hasNext()){
            Expression exp = it.next();
            exp.interpret(context);
        }
        int enter = context.output;
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
