.class public interface abstract Lcom/codemao/nemo/retrofit/api/WorkService;
.super Ljava/lang/Object;
.source "WorkService.java"


# virtual methods
.method public abstract cancelTopComment(JJ)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "work_id"
        .end annotation
    .end param
    .param p3  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/creation-tools/v1/works/{work_id}/comment/{comment_id}/top"
    .end annotation
.end method

.method public abstract topComment(JJ)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "work_id"
        .end annotation
    .end param
    .param p3  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/creation-tools/v1/works/{work_id}/comment/{comment_id}/top"
    .end annotation
.end method
