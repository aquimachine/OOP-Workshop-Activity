package com.example.topic_7;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class WelcomeController {

    @FXML private Button btnStart;

    @FXML
    private void goToMain() {
        try {
            FXMLLoader loader = new FXMLLoader(
                    getClass().getResource("hello-view.fxml")
            );
            Stage stage = (Stage) btnStart.getScene().getWindow();
            stage.setScene(new Scene(loader.load()));
            stage.setTitle("Student Management System");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}