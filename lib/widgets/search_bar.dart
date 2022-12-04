import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
    required this.onSearch,
    required this.onCancel,
  });

  final Function(String searchTerm) onSearch;
  final Function() onCancel;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _controller = TextEditingController();
  bool _showCancel = false;

  void _onSearch(String searchTerm) {
    widget.onSearch(searchTerm);
    setState(() => _showCancel = true);
  }

  void _onCancel() {
    widget.onCancel();
    _controller.clear();
    setState(() => _showCancel = false);
  }

  void _onChange() {
    if (_controller.text == '') {
      setState(() => _showCancel = false);
    } else {
      setState(() => _showCancel = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'What do you want to listen to?',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
            maxLines: 1,
            onSubmitted: _onSearch,
            onChanged: ((_) => _onChange()),
          ),
        ),
        if (_showCancel)
          TextButton(
            onPressed: _onCancel,
            child: const Text('Cancel'),
          )
      ],
    );
  }
}
