.class public interface abstract Lcom/codemao/creativecenter/utils/bcm/api/BcmService;
.super Ljava/lang/Object;
.source "BcmService.java"


# virtual methods
.method public abstract bindURlWorkId(Lcom/codemao/creativecenter/utils/bcm/bean/BindUrlWorkIdInfo;)Lretrofit2/Call;
    .param p1  # Lcom/codemao/creativecenter/utils/bcm/bean/BindUrlWorkIdInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/BindUrlWorkIdInfo;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "nemo/qiniu/upload/business/bind"
    .end annotation
.end method

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

.method public abstract getBcmCloudWorksHistory(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "work_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/nemo/v2/works/bcm/list"
    .end annotation
.end method

.method public abstract rename(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2  # Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
    .end annotation
.end method

.method public abstract uploadByType(JLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p3  # Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/nemo/v3/works/upload/{type}"
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
            "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method
