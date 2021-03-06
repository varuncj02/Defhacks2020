import 'package:flutter/material.dart';
import 'package:helloworld/dummydata.dart';
import 'package:helloworld/models/job.dart';

class CompletedJobsDetail extends StatelessWidget {
  static const routeName = '/CompletedJobsScreen';

  List<Job> jobData = DUMMY_JOBS;

  @override
  Widget build(BuildContext context) {
    final jobId = ModalRoute.of(context).settings.arguments as String;
    final selectedJob = DUMMY_JOBS.firstWhere((job) => job.jobID == jobId);
    final moneyEarned = selectedJob.price * 2;

    return Scaffold(
        appBar: AppBar(title: Text("Job Details")),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(selectedJob.jobTitle,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('${"Posted by " + selectedJob.userName}',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Divider(
                //color: Colors.blueAccent,
                //color: Colors.cyan,
                color: Color.fromRGBO(244, 154, 193, 100),

              ),
              Container(
                  child: Text("Job Description",style: TextStyle(fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 10)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      //color: Colors.blueAccent,
                      //color: Colors.cyan,
                      color: Color.fromRGBO(244, 154, 193, 100),
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  selectedJob.jobDescription,
                  style: TextStyle(fontSize: 19),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(children: [
                  Container(
                    //margin: EdgeInsets.only(top: 20, right: 20),
                    child: Row(children: [
                      Icon(Icons.timer),
                      Text("${selectedJob.jobTime + " minutes"}"),
                    ]),
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Icon(Icons.location_on),
                        Text(selectedJob.jobLocation),
                      ])),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Icon(Icons.attach_money),
                        Text(
                            "${" " + selectedJob.price.toString() + " per hour"}"),
                      ]))
                ]),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              Container(
                  margin: EdgeInsets.all(10), child: Text("Your Performance", style: TextStyle(fontWeight: FontWeight.bold),)),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                   
                    children: [
                      Icon(Icons.timer),
                      Text(
                          '${"You worked for 2 hours "}'),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                   
                    children: [
                      Icon(Icons.attach_money),
                      Text(
                          '${"You earned " + moneyEarned.toString()}'),
                    ],
                  )),
              
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Text("4.5"), // Adding text interactivity an issue
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.rate_review),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 300,
                          child: Text(
                              "Sample User Review Provided")), // How de we retrieve the value of a text field
                    ],
                  )),
                  
            ]));
  }
}
