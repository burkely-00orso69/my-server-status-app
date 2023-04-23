bool compareVersions({
  required String currentVersion, 
  required String newVersion
}) {
  final currentSplit = currentVersion.split('.').map((e) => int.parse(e)).toList();
  final newSplit = newVersion.split('.').map((e) => int.parse(e)).toList();

  if (newSplit[0] > currentSplit[0]) {
    return true;
  }
  else if (newSplit[1] > currentSplit[1]) {
    return true;
  }
  else if (newSplit[2] > currentSplit[2]) {
    return true;
  }   
  else {
    return false;
  }
}

bool serverVersionIsAhead({
  required String currentVersion, 
  required String referenceVersion, 
}) {
  final current = currentVersion.replaceAll('v', '');
  final reference = referenceVersion.replaceAll('v', '');

  final currentSplit = current.split('.').map((e) => int.parse(e)).toList();
  final newSplit = reference.split('.').map((e) => int.parse(e)).toList();

  if (newSplit[0] == currentSplit[0] && newSplit[1] == currentSplit[1] && newSplit[2] == currentSplit[2]) {
    return true;
  }
  else if (newSplit[0] < currentSplit[0]) {
    return true;
  }
  else if (newSplit[1] < currentSplit[1]) {
    return true;
  }
  else if (newSplit[2] < currentSplit[2]) {
    return true;
  }   
  else {
    return false;
  }
}