.class public interface abstract Lcom/codemao/nemo/retrofit/api/BcmService;
.super Ljava/lang/Object;
.source "BcmService.java"


# virtual methods
.method public abstract downloadFile(Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract downloadFileByObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

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
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://dev-open-service.codemao.cn/cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
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
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://open-service.codemao.cn/cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
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
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://staging-open-service.codemao.cn/cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
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
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://test-open-service.codemao.cn/cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName=qiniu"
    .end annotation
.end method

.method public abstract getMiaoCode(Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/GetMiaoCode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract uploadCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Content-Type"
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/UploadResponseVO;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method
