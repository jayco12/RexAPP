const List<String> gasKg = ['6KG', '12KG'];

const List<String> gasPrice = ['3500', '5000'];

class GazClass {
  Map<String, String> getKg(String dropdownValue) {
    Map<String, String> price = {};

    for (String amount in gasPrice) {
      price = {'price': amount};
    }
    return price;
  }
}
