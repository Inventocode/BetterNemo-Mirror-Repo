.class public interface abstract Lcom/codemao/nemo/retrofit/api/SearchService;
.super Ljava/lang/Object;
.source "SearchService.java"


# virtual methods
.method public abstract searchPubWorks(JLjava/lang/String;III)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "key"
        .end annotation
    .end param
    .param p4  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p5  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p6  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "work_types"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/PublishSearchData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "nemo/v2/work/name/search"
    .end annotation
.end method
