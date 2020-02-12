class MoneyOpportunities {
  static final INSTANCE = MoneyOpportunities();
  final String opportunities = "Toca tu piernas por cinco segundos.. Dibuja un gato en la pizarra.. Habla con tu amigo/a.. Haz la tarea de español.. Toma una foto con otra persona.. Lee un libro.. Dibuja el logo de Ciudad de Gucci.";
  int count;
  List<String> opportunitiesList;

  MoneyOpportunities(){
    opportunitiesList = opportunities.split(". ");
    count = opportunitiesList.length;
  }

}