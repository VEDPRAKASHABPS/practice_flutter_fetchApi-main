import 'package:api_fetch/datamodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final DataModel dataModel;

  const DetailsPage({Key? key, required this.dataModel}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: widget.dataModel.results!.length,
        itemBuilder: (context, index) {
          return Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Gender"),
                      Text(widget.dataModel.results![index].gender.toString()),
                    ],
                  ),
                  Row(children: [
                    SizedBox(width: 20,),
                    Text('name'), 
                    SizedBox(width: 160,),
                     Text(widget.dataModel.results![index].name!.title.toString()),

                    Text(widget.dataModel.results![index].name!.first.toString()),
                    
                    Text(widget.dataModel.results![index].name!.last.toString()),
                  ],),
                   Row(children: [
                    SizedBox(width: 20,),
                    Text('street location'), 
                    SizedBox(width: 50,),
                     Text(widget.dataModel.results![index].location!.street!.number.toString()),

                    Text(widget.dataModel.results![index].location!.street!.name.toString()),
                    
                  
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('City            '),
                    Text(widget.dataModel.results![index].location!.city!.toString()),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('state            '),
                    Text(widget.dataModel.results![index].location!.state!.toString()),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text('country            '),
                    Text(widget.dataModel.results![index].location!.country!.toString()),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text('postalcode            '),
                    Text(widget.dataModel.results![index].location!.postcode!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text('coordinatelatitude            '),
                    Text(widget.dataModel.results![index].location!.coordinates!.latitude!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' coordinatelongitude           '),
                    Text(widget.dataModel.results![index].location!.coordinates!.longitude.toString()),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text('timezone offset '),
                    Text(widget.dataModel.results![index].location!.timezone!.offset!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' timezone description '),
                    Text(widget.dataModel.results![index].location!.timezone!.description.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' email'),
                    Text(widget.dataModel.results![index].email!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' login uuid '),
                    Text(widget.dataModel.results![index].login!.uuid!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' login username '),
                    Text(widget.dataModel.results![index].login!.username!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' login password'),
                    Text(widget.dataModel.results![index].login!.password!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' login salt '),
                    Text(widget.dataModel.results![index].login!.salt.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' login md5 '),
                    Text(widget.dataModel.results![index].login!.md5.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' login sha1 '),
                    Text(widget.dataModel.results![index].login!.sha1.toString()),
                  ],),
                  //  Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                  //   Text(' login sha256 '),
                  //   Text(widget.dataModel.results![index].login!.sha256.toString()),
                  // ],),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' dob date'),
                    Text(widget.dataModel.results![index].dob!.date.toString()),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' dob age '),
                    Text(widget.dataModel.results![index].dob!.age.toString()),
                  ],),
                   
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' regs date'),
                    Text(widget.dataModel.results![index].registered!.date.toString()),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' regs age '),
                    Text(widget.dataModel.results![index].registered!.age.toString()),
                  ],),     
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' phone number '),
                    Text(widget.dataModel.results![index].phone!.toString()),
                  ],), 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' cell '),
                    Text(widget.dataModel.results![index].cell!.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' id name '),
                    Text(widget.dataModel.results![index].id!.name.toString()),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' id value '),
                    Text(widget.dataModel.results![index].id!.value.toString()),
                  ],), 
               
               CachedNetworkImage(imageUrl: widget.dataModel.results![index].picture!.large.toString()),
                CachedNetworkImage(imageUrl: widget.dataModel.results![index].picture!.medium.toString()),
                 CachedNetworkImage(imageUrl: widget.dataModel.results![index].picture!.thumbnail.toString()),
            Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' Nat '),
                    Text(widget.dataModel.results![index].nat!.toString()),
                  ],), 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text('info seed'),
                    Text(widget.dataModel.info!.seed.toString()),
                  ],), 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' info result '),
                    Text(widget.dataModel.info!.results.toString()),
                  ],), 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' info page '),
                    Text(widget.dataModel.info!.page.toString()),  
                  ],), 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    Text(' info version '),
                    Text(widget.dataModel.info!.version.toString()),
                  ],), 
              

           
          ]);
        },
      ),
    );
  }
}
