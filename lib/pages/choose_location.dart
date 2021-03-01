import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Kolkata', location: 'Pune', flag: 'india.png'),
    WorldTime(url: 'Africa/Windhoek', location: 'Africa', flag: 'Africa.jpg'),
    WorldTime(url: 'Africa/Abidjan', location: 'Abidjan', flag: 'abidjan.jpg'),
    WorldTime(url: 'Africa/Accra', location: 'Accra', flag: 'accra.png'),
    WorldTime(url: 'Africa/Algiers', location: 'Algiers', flag: 'algiers.png'),
    WorldTime(url: 'Africa/Bissau', location: 'Bissau', flag: 'bissau.png'),
    WorldTime(
        url: 'Africa/Casablanca',
        location: 'Casablanca',
        flag: 'Casablanca.png'),
    WorldTime(url: 'Africa/Ceuta', location: 'Ceuta', flag: 'Ceuta.png'),
    WorldTime(
        url: 'Africa/El_Aaiun', location: 'El_Aaiun', flag: 'El_Aaiun.png'),
    WorldTime(
        url: 'Africa/Johannesburg',
        location: 'Johannesburg',
        flag: 'Johannesburg.png'),
    WorldTime(url: 'Africa/Juba', location: 'Juba', flag: 'Juba.png'),
    WorldTime(
        url: 'Africa/Khartoum', location: 'Khartoum', flag: 'Khartoum.png'),
    WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'Lagos.png'),
    WorldTime(url: 'Africa/Maputo', location: 'Maputo', flag: 'Maputo.png'),
    WorldTime(
        url: 'Africa/Monrovia', location: 'Monrovia', flag: 'Monrovia.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'Nairobi.png'),
    WorldTime(
        url: 'Africa/Ndjamena', location: 'Ndjamena', flag: 'Ndjamena.png'),
    WorldTime(
        url: 'Africa/Sao_Tome', location: 'Sao_Tome', flag: 'Sao_Tome.png'),
    WorldTime(url: 'Africa/Tripoli', location: 'Tripoli', flag: 'Tripoli.png'),
    WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'Tunis.png'),
    WorldTime(
        url: 'Africa/Windhoek', location: 'Windhoek', flag: 'Windhoek.png'),
    WorldTime(
        url: 'America/New_York', location: 'America', flag: 'America.jpg'),
    WorldTime(url: 'America/Adak', location: 'Adak', flag: 'Adak.png'),
    WorldTime(
        url: 'America/Anchorage', location: 'Anchorage', flag: 'Anchorage.png'),
    WorldTime(
        url: 'America/Anchorage', location: 'Anchorage', flag: 'Anchorage.png'),
    WorldTime(
        url: 'America/Araguaina', location: 'Araguaina', flag: 'Araguaina.png'),
    WorldTime(
        url: 'America/Argentina/Buenos_Aires',
        location: 'Buenos_Aires',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/BCatamarca',
        location: 'Catamarca',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Cordoba',
        location: 'Cordoba',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Cordoba',
        location: 'Cordoba',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Jujuy',
        location: 'Jujuy',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/La_Rioja',
        location: 'La_Rioja',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Mendoza',
        location: 'Mendoza',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Rio_Gallegos',
        location: 'Rio_Gallegos',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Salta',
        location: 'Salta',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/San_Juan',
        location: 'San_Juan',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/San_Luis',
        location: 'San_Luis',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Tucuman',
        location: 'Tucuman',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Ushuaia',
        location: 'Ushuaia',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Atikokan', location: 'Atikokan', flag: 'Atikokan.png'),
    WorldTime(url: 'America/Bahia', location: 'Bahia', flag: 'Bahia.png'),
    WorldTime(
        url: 'America/Bahia_Banderas',
        location: 'Bahia_Banderas',
        flag: 'Bahia.png'),
    WorldTime(
        url: 'America/Barbados', location: 'Barbados', flag: 'Barbados.png'),
    WorldTime(url: 'America/Belem', location: 'Belem', flag: 'Belem.png'),
    WorldTime(url: 'America/Belize', location: 'Belize', flag: 'Belize.png'),
    WorldTime(
        url: 'America/Blanc-Sablon',
        location: 'Blanc-Sablon',
        flag: 'Blanc-Sablon.png'),
    WorldTime(
        url: 'America/Boa_Vista', location: 'Boa_Vista', flag: 'Araguaina.png'),
    WorldTime(url: 'America/Bogota', location: 'Bogota', flag: 'Bogota.png'),
    WorldTime(url: 'America/Boise', location: 'Boise', flag: 'usa.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
      'date': instance.date,
      'day': instance.day,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(
                    locations[index].location,
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
