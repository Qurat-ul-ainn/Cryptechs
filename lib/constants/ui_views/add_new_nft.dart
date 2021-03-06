import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

import '../app_colors.dart';

class AddNewNFTScreen extends StatelessWidget {
  const AddNewNFTScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Add New NFT', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          alignment: Alignment.topLeft,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubTxt(
                txt: "NTF Name",
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "SAND",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Holder Name",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Bruce Banner",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Valid",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "10/20",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Auth Code",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "2888",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "NFT Picture",
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width * 1,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                  border: Border.all(
                    color: AppColors.kGreyClr,
                    width: 2

                  ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: FlatButton(
                  onPressed: (){},

                  child: Icon(Icons.cloud_upload_outlined,size: 80,color: AppColors.kBlueClr,)
                ),
              ),
              CustomButton(
                btnFunction: () {},
                btnTxt: "Save",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
