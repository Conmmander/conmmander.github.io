enum PostType {
  post,
  tutorial,
  project
}

class PostData {
  PostData({required this.type, required this.title});

  final PostType type;
  final String title;

  factory PostData.post(String title) {
    return PostData(
      type: PostType.post,
      title: title
    );
  }

  factory PostData.tutorial(String title) {
    return PostData(
      type: PostType.tutorial,
      title: title
    );
  }

  factory PostData.project(String title) {
    return PostData(
      type: PostType.project,
      title: title
    );
  }
}