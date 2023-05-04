part of 'posts_bloc.dart';

abstract class PostsEvent extends Equatable {
  const PostsEvent();

  @override
  List<Object> get props => [];
}

class GetPostListEvent extends PostsEvent{
  final int userId;
  const GetPostListEvent({ required this.userId });
}

class GetAlbumListEvent extends PostsEvent{
  final int userId;
  const GetAlbumListEvent({ required this.userId });
}

class ChangeCurrentPostEvent extends PostsEvent{
  final PostModel post;
  const ChangeCurrentPostEvent({ required this.post });  
}

class ChangeCurrentAlbumEvent extends PostsEvent{
  final AlbumModel album;
  const ChangeCurrentAlbumEvent({ required this.album });  
}

class IsLoadingEvent extends PostsEvent{
  final bool isLoading;
  const IsLoadingEvent({ required this.isLoading});
}