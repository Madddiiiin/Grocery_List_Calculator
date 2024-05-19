package com.mycompany.app;

import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

public class API {

    HttpServer server;
    ThreadPoolExecutor threadPoolExecutor = null;
    //Process logger;

    public API () {
        try {

            server = HttpServer.create(new InetSocketAddress("localhost", 8001), 0);

        } catch (IOException e) {

            throw new RuntimeException(e);

        }
    }

    void startServer () {

        server.createContext("/test", new MyHttpHandler());
        server.setExecutor(threadPoolExecutor);
        server.start();
        System.out.println("Server started on port 8001");
        threadPoolExecutor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);

    }

}
