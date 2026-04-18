.class public interface abstract Lcom/codemao/creativecenter/utils/bcm/api/UploadService;
.super Ljava/lang/Object;
.source "UploadService.java"


# virtual methods
.method public abstract getBucketDev(Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filePaths"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
    .end annotation
.end method

.method public abstract getBucketRelease(Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filePaths"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
    .end annotation
.end method

.method public abstract getBucketStaging(Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filePaths"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
    .end annotation
.end method

.method public abstract getBucketTest(Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filePaths"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
    .end annotation
.end method
