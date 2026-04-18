.class public Lcom/codemao/nemo/bean/GoCreateCoursInfo;
.super Ljava/lang/Object;
.source "GoCreateCoursInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bcm_url:Ljava/lang/String;

.field private bcm_version:Ljava/lang/String;

.field private courseID:J

.field private previewUrl:Ljava/lang/String;

.field private worksName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->worksName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->bcm_url:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->courseID:J

    .line 17
    iput-object p5, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->bcm_version:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->previewUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBcm_url()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBcm_version()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseID()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->courseID:J

    return-wide v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWorksName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->worksName:Ljava/lang/String;

    return-object v0
.end method

.method public setBcm_url(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->bcm_url:Ljava/lang/String;

    return-void
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setCourseID(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->courseID:J

    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public setWorksName(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->worksName:Ljava/lang/String;

    return-void
.end method
