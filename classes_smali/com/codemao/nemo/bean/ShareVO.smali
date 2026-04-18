.class public Lcom/codemao/nemo/bean/ShareVO;
.super Ljava/lang/Object;
.source "ShareVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private shareType:I

.field private title:Ljava/lang/String;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/codemao/nemo/bean/ShareVO;->shareType:I

    .line 19
    iput-object p2, p0, Lcom/codemao/nemo/bean/ShareVO;->urlString:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/codemao/nemo/bean/ShareVO;->title:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/codemao/nemo/bean/ShareVO;->description:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/codemao/nemo/bean/ShareVO;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareVO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareVO;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/codemao/nemo/bean/ShareVO;->shareType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlString()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareVO;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareVO;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareVO;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setShareType(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/codemao/nemo/bean/ShareVO;->shareType:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareVO;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrlString(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareVO;->urlString:Ljava/lang/String;

    return-void
.end method
