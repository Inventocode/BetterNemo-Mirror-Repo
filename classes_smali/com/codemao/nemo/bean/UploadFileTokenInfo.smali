.class public Lcom/codemao/nemo/bean/UploadFileTokenInfo;
.super Ljava/lang/Object;
.source "UploadFileTokenInfo.java"


# instance fields
.field private access_key:Ljava/lang/String;

.field private file_path:Ljava/lang/String;

.field private policy:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_key()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->access_key:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_path()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->file_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_key(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->access_key:Ljava/lang/String;

    return-void
.end method

.method public setFile_path(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->file_path:Ljava/lang/String;

    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->policy:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->token:Ljava/lang/String;

    return-void
.end method
