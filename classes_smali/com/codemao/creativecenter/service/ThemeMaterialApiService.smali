.class public interface abstract Lcom/codemao/creativecenter/service/ThemeMaterialApiService;
.super Ljava/lang/Object;
.source "ThemeMaterialApiService.java"


# virtual methods
.method public abstract getBaseMaterial()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativestore/bean/BaseMaterialInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "creation-tools/material/base"
    .end annotation
.end method

.method public abstract getBaseMaterialInternation()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativestore/bean/BaseMaterialInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://api-creation.codemao.cn/creation-tools/material/base"
    .end annotation
.end method

.method public abstract getThemeMaterialDetail(J)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Query;
            value = "package_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "creation-tools/material/info"
    .end annotation
.end method

.method public abstract getThemeMaterialList()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialList;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "creation-tools/material/list"
    .end annotation
.end method

.method public abstract getThemeMaterialVersion()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "creation-tools/material/version"
    .end annotation
.end method
