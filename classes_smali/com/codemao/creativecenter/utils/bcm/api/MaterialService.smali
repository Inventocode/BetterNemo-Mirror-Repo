.class public interface abstract Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;
.super Ljava/lang/Object;
.source "MaterialService.java"


# virtual methods
.method public abstract addMaterialList(Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;)Lio/reactivex/Observable;
    .param p1  # Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/nemo/collect-material/add"
    .end annotation
.end method

.method public abstract deleteMaterialList(Ljava/util/List;)Lio/reactivex/Observable;
    .param p1  # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            value = "ids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/nemo/collect-material/del"
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

    .annotation runtime Lretrofit2/http/Streaming;
    .end annotation
.end method

.method public abstract getCollectMaterialList()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/nemo/collect-material/list"
    .end annotation
.end method
