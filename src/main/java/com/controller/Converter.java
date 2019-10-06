package com.controller;

import java.io.*;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.datapack.Data;

public class Converter {

    public static void toJson(Data user) throws IOException {
        File json = new File("user.json");
        Gson gson = new Gson();
        FileWriter fileWriter = new FileWriter(json);
        fileWriter.write(gson.toJson(user));
        fileWriter.flush();
        fileWriter.close();
    }

    public static Data fromJson(String path) throws FileNotFoundException {
        Data user;
        Gson gson = new Gson();

        String directory = "D:\\OpenCode\\ABC\\";

        user = gson.fromJson(new FileReader(directory+path), Data.class);

        return user;
    }


    public static ArrayList listFilesOfFOlder(File folder){
        ArrayList<String> files = new ArrayList<>();
        for (final File fileEntry : folder.listFiles()) {
            if (fileEntry.isDirectory()) {
                listFilesOfFOlder(fileEntry);
            } else {
                System.out.println(fileEntry.getName());
                files.add(fileEntry.getName());
            }
        }
        return files;
    }
}
