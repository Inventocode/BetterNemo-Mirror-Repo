.class public Lcom/codemao/nemo/bean/UploadResponseVO;
.super Ljava/lang/Object;
.source "UploadResponseVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadResponseVO;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadResponseVO;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadResponseVO;->hash:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadResponseVO;->key:Ljava/lang/String;

    return-void
.end method
