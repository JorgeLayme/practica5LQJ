package com.emergentes.controller;

import com.emergentes.bean.BeanEstudiante;
import com.emergentes.entidades.Estudiante;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("ESTAMOS EN EL SERVLET");
        //nuevo();
        //eliminar();
        //mostrar();
        //editar();
        //ostrar();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    private void nuevo() {
        BeanEstudiante dao = new BeanEstudiante();

        Estudiante e = new Estudiante();

        e.setNombre("Armando");
        e.setApellidos("Diaz");
        e.setEmail("armandodiaz@gmail.com");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date fechaNacimiento = dateFormat.parse("2005-09-09");
            e.setFechaNacimiento(fechaNacimiento);
        } catch (ParseException ex) {
        }

        dao.insertar(e);
    }

    private void editar() {
        BeanEstudiante dao = new BeanEstudiante();
        // id para editar id=5
        Integer id = 2;

        Estudiante e = dao.buscar(id);

        e.setNombre("Marlene");
        e.setApellidos("Villalobos");

        dao.editar(e);
    }

    private void eliminar() {

        BeanEstudiante dao = new BeanEstudiante();
        // id para eliminar
        Integer id = 8;
        dao.eliminar(id);
    }

    private void mostrar() {

        BeanEstudiante dao = new BeanEstudiante();
        List<Estudiante> lista = dao.listarTodos();

        for (Estudiante item : lista) {
            System.out.println(item.toString());
        }
    }

}
