/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interpreter;


/**
 *
 * @author hecto
 */
public abstract class Expression {
    public abstract String one();
    public abstract String four();
    public abstract String five();
    public abstract String nine();
    public abstract int multipler();
    
    public void interpret(Context context){
        if(context.input.startsWith(nine())){
            context.output += (9*multipler());
            context.input = context.input.substring(2);
        }
        else if(context.input.startsWith(four())){
            context.output += (4*multipler());
            context.input = context.input.substring(2);
        }
        else if(context.input.startsWith(five())){
            context.output += (5*multipler());
            context.input = context.input.substring(1);
        }
        else if(context.input.startsWith(one())){
            context.output += (1*multipler());
            context.input = context.input.substring(1);
        }
    }
}
