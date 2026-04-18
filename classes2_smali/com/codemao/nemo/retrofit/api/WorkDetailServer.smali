.class public interface abstract Lcom/codemao/nemo/retrofit/api/WorkDetailServer;
.super Ljava/lang/Object;
.source "WorkDetailServer.kt"


# virtual methods
.method public abstract followUser(J)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/nemo/v2/user/{userId}/follow"
    .end annotation
.end method

.method public abstract forkWork(J)Lio/reactivex/Observable;
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
            "Lcom/codemao/nemo/bean/response/WorkForkKnResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "nemo/v2/works/{work_id}/fork"
    .end annotation
.end method
