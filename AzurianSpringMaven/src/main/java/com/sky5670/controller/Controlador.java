/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sky5670.controller;

import com.sky5670.entity.Persona;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author javie
 */
@Controller
public class Controlador {
    Conexiondb con = new Conexiondb();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.conexion());
    ModelAndView mv = new ModelAndView();
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql ="select * from usuario";
        List datos=this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista",datos);
        mv.setViewName("index");
        return mv;
    }
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mv.addObject(new Persona());
        mv.setViewName("agregar");
        return mv;
    }
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Persona p){
        String sql ="insert into usuario (ID_Persona,Nombre, Apellido, RUT)values(?,?,?,?)";
        this.jdbcTemplate.update(sql,p.getID_Persona(),p.getNombre(),p.getApellido(),p.getRUT());
        return new ModelAndView("redirect:/index.htm");
    }
}
