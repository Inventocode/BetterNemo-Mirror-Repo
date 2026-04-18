.class public Lcom/codemao/nemo/bean/CourseWorkInfo;
.super Ljava/lang/Object;
.source "CourseWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private course_type:I

.field private description:Ljava/lang/String;

.field private difficulty:I

.field private like_count:I

.field private name:Ljava/lang/String;

.field private parent_id:J

.field private preview:Ljava/lang/String;

.field private user_id:J

.field private user_name:Ljava/lang/String;

.field private view_count:I

.field private work_id:J


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

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_type()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->course_type:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDifficulty()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->difficulty:I

    return v0
.end method

.method public getLike_count()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->like_count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->parent_id:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getUser_name()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getView_count()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->view_count:I

    return v0
.end method

.method public getWork_id()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->work_id:J

    return-wide v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCourse_type(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->course_type:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDifficulty(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->difficulty:I

    return-void
.end method

.method public setLike_count(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->like_count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->parent_id:J

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 112
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->user_id:J

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setView_count(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->view_count:I

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 48
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseWorkInfo;->work_id:J

    return-void
.end method
