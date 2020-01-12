import React, { useEffect, useState } from "react";
import Autocomplete from "./autocomplete";

import "./App.css";

const App = () => {
  const APP_ID = "712a2136";
  const APP_KEY = "08675e5bf3c171e76ce515288d819ddc";

  const [autoCompleteData, setAutoComplete] = useState([]);
  const [search, setSearch] = useState("");

  const [query, setQuery] = useState("chicken");

  const getSearch = e => {
    e.preventDefault();
    setQuery(search);
    setSearch("");
    console.log(search);
  };

  const updateSearch = e => {
    setSearch(e.target.value);
    console.log(search);
    // console.log(search);
    // console.log(e.target.value);
    // if (search.length > 2) {
    // console.log("auto comeplete called");
    //getAutoComplete();
    // }
  };

  useEffect(() => {
    getAutoComplete();
  }, [search]);

  const getAutoComplete = async () => {
    console.log("search value in autocomplete", search);

    const respone = await fetch(
      `http://localhost:61092/api/food?FoodName=${search}`
    );
    const data = await respone.json();
    setAutoComplete(data);
    console.log(data);
  };

  return (
    <div className="App">
      <form onSubmit={getSearch} className="search-form">
        <input
          type="text"
          value={search}
          onChange={updateSearch}
          className="search-bar"
        />

        <button type="submit" className="search-button">
          Search
        </button>
      </form>
      <div>
        {autoCompleteData.map(a => (
          <Autocomplete key={a.id} title={a.Name} />
        ))}
      </div>
    </div>
  );
};

export default App;
