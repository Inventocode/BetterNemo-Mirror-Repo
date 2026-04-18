.class public interface abstract Lcom/codemao/nemo/retrofit/api/CloudService;
.super Ljava/lang/Object;
.source "CloudService.java"


# virtual methods
.method public abstract deleteCloudWorks(J)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "work_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "nemo/v2/works/{work_id}"
    .end annotation
.end method

.method public abstract getCloudWorksArray(III)Lio/reactivex/Observable;
    .param p1  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "work_type"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "creation-tools/v1/works/list/user"
    .end annotation
.end method

.method public abstract searchCloudWorksArray(Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query_type"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/nemo/user/works/search"
    .end annotation
.end method
