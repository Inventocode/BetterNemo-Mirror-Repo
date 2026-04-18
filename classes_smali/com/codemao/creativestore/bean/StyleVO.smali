.class public Lcom/codemao/creativestore/bean/StyleVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "StyleVO.java"


# instance fields
.field private base64:Ljava/lang/String;

.field private center_point:Lcom/codemao/creativestore/bean/CenterPoint;

.field private id:Ljava/lang/String;

.field public transient isFromCopy:Z

.field private name:Ljava/lang/String;

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/codemao/creativestore/utils/annotion/IgnoreGson;
    .end annotation
.end field

.field private texture:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public static createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/CenterPoint;)Lcom/codemao/creativestore/bean/StyleVO;
    .registers 5

    .line 110
    new-instance v0, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/StyleVO;-><init>()V

    .line 111
    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/StyleVO;->setName(Ljava/lang/String;)V

    if-nez p3, :cond_14

    .line 113
    new-instance p3, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 p0, 0x0

    invoke-direct {p3, p0, p1, p0, p1}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    :cond_14
    invoke-virtual {v0, p3}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_29

    const-string p0, "res"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 115
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    goto :goto_2c

    .line 117
    :cond_29
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    :goto_2c
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/codemao/creativestore/bean/StyleVO;
    .registers 8

    .line 84
    new-instance v0, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/StyleVO;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/codemao/creativestore/bean/StyleVO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    if-eqz v1, :cond_20

    .line 87
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v3

    iget-object v1, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 89
    :cond_20
    iget-object v1, p0, Lcom/codemao/creativestore/bean/StyleVO;->texture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public copy(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;
    .registers 8

    .line 97
    new-instance v0, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/StyleVO;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    if-eqz p1, :cond_1e

    .line 100
    new-instance v1, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v2

    iget-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 102
    :cond_1e
    iget-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->texture:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    iput-object p1, v0, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBase64()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->base64:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    if-nez v0, :cond_d

    .line 73
    new-instance v0, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    .line 75
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTexture()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->texture:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->hasUrlEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 62
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    .line 64
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBase64(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->base64:Ljava/lang/String;

    return-void
.end method

.method public setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->texture:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StyleVO;->url:Ljava/lang/String;

    return-void
.end method
