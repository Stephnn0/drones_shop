import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Use the contact form below to send us a brief description with any doubts you have or call or email to get in touch.',
              style: TextStyle(fontSize: 19, color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 1,
              width: 80,
              color: Colors.white,
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.grey.shade700),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey.shade700),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "Subject",
                  labelStyle: TextStyle(color: Colors.grey.shade700),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              minLines: 2,
              maxLines: 7,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.grey.shade700),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  filled: true,
                  labelText: "Message",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 120,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(
                  child: Text(
                    'SEND',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Icon(
              Icons.call_rounded,
              size: 60,
              color: Colors.grey.shade700,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "786 315 7771",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            Icon(
              Icons.mail_outline_rounded,
              size: 60,
              color: Colors.grey.shade700,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "pitajayadrones@gmail.com",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
