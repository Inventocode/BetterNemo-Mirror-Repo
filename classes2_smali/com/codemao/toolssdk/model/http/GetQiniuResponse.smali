.class public Lcom/codemao/toolssdk/model/http/GetQiniuResponse;
.super Ljava/lang/Object;
.source "GetQiniuResponse.java"


# instance fields
.field private bucket:Ljava/lang/String;

.field private bucket_url:Ljava/lang/String;

.field private internal_upload_url:Ljava/lang/String;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private upload_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket_url()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->bucket_url:Ljava/lang/String;

    return-object v0
.end method

.method public getInternal_upload_url()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->internal_upload_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public getUpload_url()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->upload_url:Ljava/lang/String;

    return-object v0
.end method

.method public setBucket(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setBucket_url(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->bucket_url:Ljava/lang/String;

    return-void
.end method

.method public setInternal_upload_url(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->internal_upload_url:Ljava/lang/String;

    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->tokens:Ljava/util/List;

    return-void
.end method

.method public setUpload_url(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->upload_url:Ljava/lang/String;

    return-void
.end method
