require 'pry'

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

    holiday_hash =
    {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
    }

  def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  end

  def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash.each do |key, value|
      if key == :winter
      value.each do |key2, value2|
          value2 << supply
        end
      end
    end
    holiday_hash
  end


  def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash.each do |key, value|
    if key == :spring
    value.each do |key2, value2|
        value2 << supply
      end
    end
  end
  holiday_hash
  end

  def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash

  end

  def all_winter_holiday_supplies(holiday_hash)
    winter_supplies = []

    holiday_hash.each do |season, holiday_name|
      if season == :winter
        holiday_name.each do |key2, value2|
          winter_supplies << value2
        end
      end
    end
    winter_supplies.flatten
  end


  def all_supplies_in_holidays(holiday_hash)
    # iterate through holiday_hash and print items such that your readout resembles:
    # Winter:
    #   Christmas: Lights, Wreath
    #   New Years: Party Hats
    # Summer:
    #   Fourth Of July: Fireworks, BBQ
    # etc.
    all_supplies = ""
    supplies = []

    holiday_hash = holiday_hash
    holiday_hash.each do |season, holiday|
      puts "#{season.to_s.capitalize!}:"
      holiday.each do |holiday_name, supply|
      puts "  #{holiday_name.to_s.gsub(/_/, ' ').split(" ").each{|word| word.capitalize!}.join(" ")}: #{supply.join(', ')}"

    end
    end

  end

  def all_holidays_with_bbq(holiday_hash)
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
    holidays_with_bbq = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday_name, supply|
        if supply.include?("BBQ")
          holidays_with_bbq << holiday_name
        else
        end
      end
    end
    holidays_with_bbq
  end
