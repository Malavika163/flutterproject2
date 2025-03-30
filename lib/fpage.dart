import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterproject2/bloc/counter_bloc.dart';

class fpage extends StatelessWidget {
  const fpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text("${state.count}");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(increment());
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(decrement());
                    },
                    icon: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}

