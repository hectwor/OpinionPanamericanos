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
public class ThousandExpression extends Expression{

    @Override
    public String one() {
        return "M";
    }

    @Override
    public String four() {
        return " ";
    }

    @Override
    public String five() {
        return " ";
    }

    @Override
    public String nine() {
        return " ";
    }

    @Override
    public int multipler() {
        return 1000;
    }
    
}
