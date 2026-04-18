.class public interface abstract Lcom/codemao/nemo/retrofit/api/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# virtual methods
.method public abstract activate(Ljava/lang/String;Lcom/codemao/nemo/bean/ActivateRequest;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # Lcom/codemao/nemo/bean/ActivateRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/ActivateRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "https://{host}/data-center/app/activate"
    .end annotation
.end method

.method public abstract urlList(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://{host}/common/config/list-static-url-check"
    .end annotation
.end method
