.class public Lcom/codemao/nemo/bean/CourseVO;
.super Ljava/lang/Object;
.source "CourseVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private is_played:Z

.field private preview_url:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview_url()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseVO;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseVO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_played()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/CourseVO;->is_played:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_played(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/CourseVO;->is_played:Z

    return-void
.end method

.method public setPreview_url(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseVO;->preview_url:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseVO;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseVO;->type:Ljava/lang/String;

    return-void
.end method
