.class public interface abstract Lcom/codemao/nemo/setting/api/AvatarApiService;
.super Ljava/lang/Object;
.source "AvatarApiService.kt"


# virtual methods
.method public abstract cancelUserAvatarFrame()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/creation-tools/v1/user/avatar-frame/cancel"
    .end annotation
.end method

.method public abstract getUserAvatarFrameInfos()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfos;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/creation-tools/v1/user/avatar-frame/list"
    .end annotation
.end method

.method public abstract setupUserAvatarFrame(J)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
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

    .annotation runtime Lretrofit2/http/PUT;
        value = "/creation-tools/v1/user/avatar-frame/{id}"
    .end annotation
.end method
