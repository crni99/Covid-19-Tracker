package com.covid.CovidData.controller;

import java.net.URL;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.covid.CovidData.model.AllData;
import com.covid.CovidData.model.Continent;
import com.covid.CovidData.model.SpecificCountry;
import com.covid.CovidData.model.SpecificState;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MainController {
	
	private static ObjectMapper mapper = new ObjectMapper();
	
	//		https://disease.sh/docs/#/COVID-19%3A%20Worldometers/get_v3_covid_19_all
	
	private static final String INDEX_PAGE = "index";
	private static final String ALLDATA_PAGE = "all";
	private static final String COUNTRY_PAGE = "country";
	private static final String CONTINENT_PAGE = "continent";
	private static final String STATE_PAGE = "state";
	
	@GetMapping("/covid-19/")
	public String index() {
		return INDEX_PAGE;
	}
	
	@GetMapping("/covid-19/all")
	public String all(final Model model) {
		try {
			URL COUNTRIES_URL = new URL("https://disease.sh/v3/covid-19/all");
			mapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			List<AllData> allDataList = mapper.readValue(COUNTRIES_URL, new TypeReference<List<AllData>>(){});
			model.addAttribute("allData", allDataList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ALLDATA_PAGE;
	}
	
	@GetMapping("/covid-19/continents")
	public String continents(final Model model) {
		try {
			URL CONTINENTS_URL = new URL("https://disease.sh/v3/covid-19/all");
			mapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			List<AllData> allDataList = mapper.readValue(CONTINENTS_URL, new TypeReference<List<AllData>>(){});
			model.addAttribute("allData", allDataList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ALLDATA_PAGE;
	}
	
	@GetMapping("/covid-19/state/{state}")
	public String specificState(@PathVariable String state, Model model) {
		try {
			URL STATE_URL = new URL("https://disease.sh/v3/covid-19/states/" + state);
			mapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			List<SpecificState> stateList = mapper.readValue(STATE_URL, new TypeReference<List<SpecificState>>(){});
			model.addAttribute("state", stateList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return STATE_PAGE;
	}
	
	@GetMapping("/covid-19/country/{country}")
	public String specificCountry(@PathVariable String country, final Model model) {
		try {
			URL COUNTRY_URL = new URL("https://disease.sh/v3/covid-19/countries/"+ country +"?strict=true");
			mapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			List<SpecificCountry> countryList = mapper.readValue(COUNTRY_URL, new TypeReference<List<SpecificCountry>>(){});
			model.addAttribute("country", countryList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return COUNTRY_PAGE;
	}
	
	
	@GetMapping("/covid-19/continent/{continent}")
	public String specificContinent(@PathVariable String continent, final Model model) {
		try {
			URL CONTINENT_URL = new URL("https://disease.sh/v3/covid-19/continents/"+ continent +"?strict=true");
			mapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			List<Continent> continentList = mapper.readValue(CONTINENT_URL, new TypeReference<List<Continent>>(){});
			model.addAttribute("continent", continentList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CONTINENT_PAGE;
	}
	
	
}
