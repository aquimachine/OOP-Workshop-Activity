package com.example.topic_7;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.stage.Stage;

public class ThankYouController {

    @FXML private Label lblMessage;

    private String message = "Operation completed successfully.";

    public void setMessage(String message) {
        this.message = message;
        if (lblMessage != null) {
            lblMessage.setText(message);
        }
    }

    @FXML
    private void goBack() {
        try {
            FXMLLoader loader = new FXMLLoader(
                    getClass().getResource("hello-view.fxml")
            );
            Stage stage = (Stage) lblMessage.getScene().getWindow();
            stage.setScene(new Scene(loader.load()));
            stage.setTitle("Student Management System");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}