package vn.pbl.core.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "comment")
public class CommentEntity {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer commentId;

    @Column(name = "content")
    private String content;

    @Column(name = "createdate")
    private String createDate;

    @ManyToOne
    @JoinColumn(name="userid")
    private UserEntity userEntity;

    @ManyToOne
    @JoinColumn(name="listenguidelineid")
    private ListenGuidelineEntity listenGuidelineEntity;

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public UserEntity getUser() {
        return userEntity;
    }

    public void setUser(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public ListenGuidelineEntity getListenGuideline() {
        return listenGuidelineEntity;
    }

    public void setListenGuideline(ListenGuidelineEntity listenGuidelineEntity) {
        this.listenGuidelineEntity = listenGuidelineEntity;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public ListenGuidelineEntity getListenGuidelineEntity() {
        return listenGuidelineEntity;
    }

    public void setListenGuidelineEntity(ListenGuidelineEntity listenGuidelineEntity) {
        this.listenGuidelineEntity = listenGuidelineEntity;
    }
}
