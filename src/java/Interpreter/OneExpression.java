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
public class OneExpression extends Expression{

    @Override
    public String one() {
        return "I";
    }

    @Override
    public String four() {
        return "IV";
    }

    @Override
    public String five() {
        return "V";
    }

    @Override
    public String nine() {
        return "IX";
    }

    @Override
    public int multipler() {
        return 1;
    }
    
}
