customAlertBox(BuildContext context, String text) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(text),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Ok",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent,
                    fontSize: 25),
              ))
        ],
      ),
    );
  }
