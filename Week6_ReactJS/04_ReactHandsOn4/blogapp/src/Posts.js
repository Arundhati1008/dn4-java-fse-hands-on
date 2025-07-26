import React from "react";
import Post from "./Post";

class Posts extends React.Component {
  constructor(props) {
    super(props);
    //initialize
    this.state = {
      posts: [],
      error: null,
    };
  }
// this fetch posts from api
  loadPosts() {
    fetch("https://jsonplaceholder.typicode.com/posts")
      .then((res) => res.json())
      //updatee state 
      .then((data) => this.setState({ posts: data }))
      // incase of error store error msg
      .catch((err) => this.setState({ error: err.message }));
  }

  componentDidMount() {
  console.log("loading posts...");
  // calling method fetch posts
  this.loadPosts();
}

// hanfdle error in rendering
  componentDidCatch(error, info) {
    alert("Error occurred: " + error.toString());
  }

  render() {
    return (
      <div>
        <h2>Blog Posts</h2>
        {this.state.posts.map((post) => (
          <Post key={post.id} title={post.title} body={post.body} />
        ))}
      </div>
    );
  }
}

export default Posts;
