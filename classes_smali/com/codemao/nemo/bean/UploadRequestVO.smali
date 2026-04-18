.class public Lcom/codemao/nemo/bean/UploadRequestVO;
.super Ljava/lang/Object;
.source "UploadRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private file:Ljava/io/File;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadRequestVO;->file:Ljava/io/File;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadRequestVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadRequestVO;->file:Ljava/io/File;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadRequestVO;->token:Ljava/lang/String;

    return-void
.end method
