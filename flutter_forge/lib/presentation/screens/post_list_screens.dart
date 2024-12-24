import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forge/presentation/bloc/post_cubit.dart';
import 'package:flutter_forge/presentation/bloc/post_state.dart';
import 'package:flutter_forge/presentation/widgets/post_list_tile.dart';
import 'package:get_it/get_it.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<PostCubit>()..fetchPosts(),
      child: SafeArea(
        bottom: true,
        top: false,
        child: Scaffold(
          appBar: AppBar(title: const Text('Posts')),
          body: BlocBuilder<PostCubit, PostState>(
            builder: (context, state) {
              if (state is PostLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PostLoaded) {
                return ListView.builder(
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    final post = state.posts[index];
                    return PostListTile(post);
                  },
                );
              } else if (state is PostError) {
                return Center(child: Text('Error: ${state.message}'));
              }
              return const Center(child: Text('Start Fetching Posts!'));
            },
          ),
        ),
      ),
    );
  }
}
