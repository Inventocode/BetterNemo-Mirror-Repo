.class public Lcom/codemao/nemo/bean/ImgDictVO;
.super Ljava/lang/Object;
.source "ImgDictVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/nemo/bean/ImgDictVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/ImgDictVO;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/nemo/bean/ImgDictVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/bean/ImgDictVO;->path:Ljava/lang/String;

    return-void
.end method
