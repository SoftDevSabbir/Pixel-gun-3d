 customButton(VoidCallback voidCallback, String text) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent.shade200,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
