import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final List<String> suggestions;
  final Function(String) onSearch;

  const SearchWidget({super.key, required this.suggestions, required this.onSearch});

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  List<String> filteredSuggestions = [];
  bool isSuggestionsVisible = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {
      filteredSuggestions = widget.suggestions
          .where((suggestion) =>
          suggestion.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
      isSuggestionsVisible = _searchController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Hide keyboard and suggestions when tapping outside the search box
        FocusScope.of(context).unfocus();
        setState(() {
          isSuggestionsVisible = false;
        });
      },
      child: SizedBox(
       // height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => widget.onSearch(_searchController.text),
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (isSuggestionsVisible)
              Expanded(
                child: ListView.builder(
                  itemCount: filteredSuggestions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(filteredSuggestions[index]),
                      onTap: () => _selectSuggestion(filteredSuggestions[index]),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _selectSuggestion(String suggestion) {
    setState(() {
      _searchController.text = suggestion;
      // Hide suggestions after selecting one
      isSuggestionsVisible = false;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
