.class public Lcom/codemao/nemo/bean/StyleVO;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "StyleVO.java"


# instance fields
.field private base64:Ljava/lang/String;

.field private center_point:Lcom/codemao/nemo/bean/CenterPoint;

.field private id:Ljava/lang/String;

.field public transient isFromCopy:Z

.field private name:Ljava/lang/String;

.field private texture:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public static createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CenterPoint;)Lcom/codemao/nemo/bean/StyleVO;
    .registers 5

    .line 95
    new-instance v0, Lcom/codemao/nemo/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/StyleVO;-><init>()V

    .line 96
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/StyleVO;->setName(Ljava/lang/String;)V

    if-nez p3, :cond_14

    .line 98
    new-instance p3, Lcom/codemao/nemo/bean/CenterPoint;

    const-wide/16 p0, 0x0

    invoke-direct {p3, p0, p1, p0, p1}, Lcom/codemao/nemo/bean/CenterPoint;-><init>(DD)V

    :cond_14
    invoke-virtual {v0, p3}, Lcom/codemao/nemo/bean/StyleVO;->setCenter_point(Lcom/codemao/nemo/bean/CenterPoint;)V

    const-string p0, "res"

    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 100
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    goto :goto_26

    .line 102
    :cond_23
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    :goto_26
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/codemao/nemo/bean/StyleVO;
    .registers 8

    .line 70
    new-instance v0, Lcom/codemao/nemo/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/StyleVO;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/codemao/nemo/bean/StyleVO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    if-eqz v1, :cond_20

    .line 73
    new-instance v2, Lcom/codemao/nemo/bean/CenterPoint;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CenterPoint;->getX()D

    move-result-wide v3

    iget-object v1, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CenterPoint;->getY()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/nemo/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/StyleVO;->setCenter_point(Lcom/codemao/nemo/bean/CenterPoint;)V

    .line 75
    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/StyleVO;->texture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/codemao/nemo/bean/StyleVO;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public copy(Ljava/lang/String;)Lcom/codemao/nemo/bean/StyleVO;
    .registers 8

    .line 82
    new-instance v0, Lcom/codemao/nemo/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/StyleVO;-><init>()V

    .line 83
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    if-eqz p1, :cond_1e

    .line 85
    new-instance v1, Lcom/codemao/nemo/bean/CenterPoint;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CenterPoint;->getX()D

    move-result-wide v2

    iget-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CenterPoint;->getY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/nemo/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/StyleVO;->setCenter_point(Lcom/codemao/nemo/bean/CenterPoint;)V

    .line 87
    :cond_1e
    iget-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->texture:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBase64()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->base64:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_point()Lcom/codemao/nemo/bean/CenterPoint;
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    if-nez v0, :cond_d

    .line 59
    new-instance v0, Lcom/codemao/nemo/bean/CenterPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/codemao/nemo/bean/CenterPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    .line 61
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTexture()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->texture:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/bean/StyleVO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBase64(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->base64:Ljava/lang/String;

    return-void
.end method

.method public setCenter_point(Lcom/codemao/nemo/bean/CenterPoint;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->center_point:Lcom/codemao/nemo/bean/CenterPoint;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->texture:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/bean/StyleVO;->url:Ljava/lang/String;

    return-void
.end method
