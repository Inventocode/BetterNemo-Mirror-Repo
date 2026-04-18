.class public Lcom/codemao/nemo/bean/WorkPublishInfo;
.super Ljava/lang/Object;
.source "WorkPublishInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private open:Z

.field private preview:Ljava/lang/String;

.field private publish_cover_url:Ljava/lang/String;

.field private screenshot_cover_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_cover_url()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->publish_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_cover_url()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->screenshot_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->open:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpen(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->open:Z

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_cover_url(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->publish_cover_url:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_cover_url(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfo;->screenshot_cover_url:Ljava/lang/String;

    return-void
.end method
