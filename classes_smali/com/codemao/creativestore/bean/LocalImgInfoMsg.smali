.class public Lcom/codemao/creativestore/bean/LocalImgInfoMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "LocalImgInfoMsg.java"


# static fields
.field public static final transient TYPE_ACTOR:I = 0x1

.field public static final transient TYPE_BACKGROUND:I


# instance fields
.field private center_point:Lcom/codemao/creativestore/bean/CenterPoint;

.field private transient entityType:I

.field private entity_id:Ljava/lang/String;

.field private transient localPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field private style_content:Ljava/lang/String;

.field private style_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 18
    iput p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entityType:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/creativestore/bean/LocalImgInfoMsg;
    .registers 8

    .line 70
    new-instance v0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    iget v1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entityType:I

    invoke-direct {v0, v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 71
    iget-object v1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entity_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->style_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    if-eqz v1, :cond_2c

    .line 75
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v3

    iget-object v1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    :cond_2c
    return-object v0
.end method

.method public getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    return-object v0
.end method

.method public getEntityType()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entityType:I

    return v0
.end method

.method public getEntity_id()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entity_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_content()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->style_content:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_id()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->style_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    return-void
.end method

.method public setEntityType(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entityType:I

    return-void
.end method

.method public setEntity_id(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->entity_id:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setStyle_content(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->style_content:Ljava/lang/String;

    return-void
.end method

.method public setStyle_id(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->style_id:Ljava/lang/String;

    return-void
.end method
