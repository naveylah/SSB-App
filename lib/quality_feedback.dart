import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';
import 'HomePage.dart';
import 'quality_drop_box.dart';

class QualityFeadback extends StatefulWidget {
  QualityFeadback({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _QualityFeadback createState() => _QualityFeadback();
}

class _QualityFeadback extends State<QualityFeadback> {
  String rpcUrl = "http://127.0.0.1:7545";
  String wsUrl = "ws://127.0.0.1:7545/";
  Future<void> sendEther() async {
    Web3Client client = Web3Client(rpcUrl, Client(), socketConnector: () {
      return IOWebSocketChannel.connect(wsUrl).cast<String>();
    });

    String privateKey =
        "a2f28b33c0b97ae5385cdc447ceb62442825c8786acada242f3454a5e7c50ff3";
    Credentials credentials =
        await client.credentialsFromPrivateKey(privateKey);
    EthereumAddress receiver =
        EthereumAddress.fromHex("0x0305E07Fa3DeD6a22710bbAEeb8D481699aCC7b2");

    EthereumAddress ownAddress = await credentials.extractAddress();
    print(ownAddress);

    client.sendTransaction(
        credentials,
        Transaction(
            from: ownAddress,
            to: receiver,
            value: EtherAmount.fromUnitAndValue(EtherUnit.ether, 20)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Send feedback',
          style: TextStyle(fontFamily: "ubuntu", fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Row(
              children: [
                Expanded(
                    child: Icon(
                  Icons.account_circle,
                  size: 100.0,
                ))
              ],
            ),
          ),
          Text(
            'What made you feel that way?',
            style: TextStyle(fontFamily: 'aviner', fontSize: 40),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(70),
            child: CustomDropDownWidget(),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Form(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                      'Thank you for submitting feedback!'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  // ignore: deprecated_member_use
                                  child: RaisedButton(
                                    child: Text("ok"),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
