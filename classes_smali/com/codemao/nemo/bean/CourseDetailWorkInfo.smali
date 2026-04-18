.class public Lcom/codemao/nemo/bean/CourseDetailWorkInfo;
.super Ljava/lang/Object;
.source "CourseDetailWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private course_type:I

.field private description:Ljava/lang/String;

.field private difficulty:I

.field private like_count:I

.field private parent_id:J

.field private preview:Ljava/lang/String;

.field private user_id:J

.field private user_name:Ljava/lang/String;

.field private view_count:I

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_type()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->course_type:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDifficulty()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->difficulty:I

    return v0
.end method

.method public getLike_count()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->like_count:I

    return v0
.end method

.method public getParent_id()J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->parent_id:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getUser_name()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getView_count()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->view_count:I

    return v0
.end method

.method public getWork_id()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCourse_type(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->course_type:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDifficulty(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->difficulty:I

    return-void
.end method

.method public setLike_count(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->like_count:I

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 33
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->parent_id:J

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 113
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->user_id:J

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setView_count(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->view_count:I

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
