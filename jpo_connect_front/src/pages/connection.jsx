import React from "react";
import "./connection-inscription.css";
// import "../js/verif-input.js";
import Button from "../components/Button/Button";
import { BrowserRouter as Router, Link } from "react-router-dom";

export default function Connection() {
  return (
    <section className="connection">
      <h1 className="connection-title">Connexion</h1>
      <form method="post" action="" id="form-connection">
        <label for="email">Votre Email</label>
        <input type="email" name="email" id="email" />
        <span id="emailError"></span>
        <label for="password">Votre Mot de Passe</label>
        <input type="password" name="password" id="password" />
        <Button className="button-registration">Connexion</Button>
        <span id="connection-message"></span>
      </form>
      <p className="text-info">
        Si vous n'avez pas de compte veuillez vous{" "}
        <Link to="/inscription" className="text-info">
          Inscrire
        </Link>
      </p>
    </section>
  );
}
