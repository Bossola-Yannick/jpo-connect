import React from "react";
// import { useState } from "react";
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom";

import "./App.css";
// import Header from "./components/Header";
// import Footer from "./components/Footer";
import Homepage from "./pages/homepage";

function App() {
  return (
    <Router>
      <div style={{ padding: "2rem" }}>
        <h1>Mon Frontend React</h1>

        <nav style={{ marginBottom: "1rem" }}>
          <Link to="/">Accueil</Link>
        </nav>

        <Routes>
          <Route path="/" element={<Homepage />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
