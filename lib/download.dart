import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadButtonPage extends StatefulWidget {
  const DownloadButtonPage({super.key});

  @override
  State<DownloadButtonPage> createState() => _DownloadButtonPageState();
}

class _DownloadButtonPageState extends State<DownloadButtonPage> {
  String DownloadMessage = 'Initializing...';
  bool _isDownloading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text('Downloading Page'),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () async {
              setState(() {
                _isDownloading = !_isDownloading;
              });
              var dir = await getExternalStorageDirectory();
              Dio dio = Dio();
              dio.download(
                  'https://sample-videos.com/img/Sample-jpg-image-5mb.jpg',
                  '${dir?.path}/sample.jpg',
                  onReceiveProgress: ((actualbytes, totalbytes) {
                var Percentage = actualbytes / totalbytes * 100;
                setState(() {
                  DownloadMessage = 'Downloading... ${Percentage.floor()} %';
                });
              }));
            },
            label: Text('Download'),
            icon: Icon(Icons.file_download_outlined),
          ),
          SizedBox(
            height: 35,
          ),
          Text(DownloadMessage)
        ],
      )),
    );
  }
}
