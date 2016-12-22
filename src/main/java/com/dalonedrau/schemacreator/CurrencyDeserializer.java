package com.dalonedrau.schemacreator;

import java.io.IOException;
import java.util.AbstractMap;

import com.dalonedrau.entities.lablord.Currency;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;

public class CurrencyDeserializer
		extends StdDeserializer<AbstractMap<Currency, Float>> {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	public CurrencyDeserializer() {
		super(AbstractMap.class);
	}

	@Override
	public AbstractMap<Currency, Float> deserialize(final JsonParser jp,
			final DeserializationContext arg1)
					throws IOException, JsonProcessingException {
		JsonToken token;
		while ((token = jp.nextValue()) != null) {
			System.out.println(jp.getCurrentName());
			/*
			 * if (token.isNumeric()) { String propertyName =
			 * jp.getCurrentName(); if ("key".equalsIgnoreCase(propertyName)) {
			 * key = jp.getIntValue(); } else if
			 * ("value".equalsIgnoreCase(propertyName)) { value =
			 * jp.getDoubleValue(); } }
			 */
		}

		/*
		 * if (key != null && value != null) { return new
		 * AbstractMap.SimpleEntry(key, value); }
		 */
		return null;
	}

}
