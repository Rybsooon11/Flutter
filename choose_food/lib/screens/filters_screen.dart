import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const String routeName = '/filters';

  final Function setFilters;
  final Map<String, bool> currentFilter;

  FiltersScreen(this.currentFilter, this.setFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isYounger = false;
  bool _isOlder = false;
  bool _isMan = false;
  bool _isWoman = false;

  @override
  void initState(){
    _isYounger = widget.currentFilter['young'];
    _isOlder = widget.currentFilter['old'];
    _isMan = widget.currentFilter['man'];
    _isWoman = widget.currentFilter['woman'];
    super.initState();
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
      activeColor: Theme.of(context).primaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'young': _isYounger,
                'old': _isOlder,
                'man': _isMan,
                'woman': _isWoman,
              };
              widget.setFilters(selectedFilters);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Choose filter',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Young',
                  'Politics who age < 40',
                  _isYounger,
                  (newValue) {
                    setState(
                      () {
                        _isYounger = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Old',
                  'Politics who age > 40',
                  _isOlder,
                  (newValue) {
                    setState(
                      () {
                        _isOlder = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Man',
                  'Politics who are a man',
                  _isMan,
                  (newValue) {
                    setState(
                      () {
                        _isMan = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Women',
                  'Politics who are a woman',
                  _isWoman,
                  (newValue) {
                    setState(
                      () {
                        _isWoman = newValue;
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
