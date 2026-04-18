.class public interface abstract Lcom/codemao/nemo/qrscan/net/api/ScanApiService;
.super Ljava/lang/Object;
.source "ScanApiService.kt"


# virtual methods
.method public abstract checkUrl(Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1  # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "nemo/v3/link/white-list"
    .end annotation
.end method
