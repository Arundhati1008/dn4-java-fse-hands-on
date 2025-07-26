
import React from "react";
class Post extends React.Component {
  render() {
    return (
         <div style={{ border: "1px solid #ccc", margin: "10px", padding: "10px" }}>  
        
        <p><strong>User ID: </strong> {this.props.userId}</p>
        <p><strong>Post ID: </strong> {this.props.id}</p>
        <p><strong>Title: </strong>{this.props.title}</p>
        <p><strong>body: </strong>{this.props.body}</p>
      </div>
    );
  }
}

export default Post;
