
part of creek_map;

class GoogleDemoMapPage extends StatefulWidget{
  const GoogleDemoMapPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GoogleDemoMapPageState();
  }
  
}
class GoogleDemoMapPageState extends State<GoogleDemoMapPage>{
  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.624501497297263, 114.01746328788967),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 114.01746328788967,
      target: LatLng(22.624501497297263, 114.01746328788967),
      tilt: 22.624501497297263,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("地图"),),
      body: GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);

        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
  
}