import 'package:flutter/material.dart';
import 'package:ui/Models/compactitemjob.dart';
import 'package:ui/Models/item_job.dart';
import 'package:ui/Models/job.dart';

class joblist extends StatelessWidget{
  List<job> jobs;
  joblist(this.jobs);
// List<job> jobs = [
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:true,
      physics:NeverScrollableScrollPhysics(),
      itemCount: this.jobs.length,
      itemBuilder: (context, index)=>compactitemjob(this.jobs[index]),
    );
  }

  
}