.class public interface abstract Lcn/codemao/android/account/net/ProtocolApi;
.super Ljava/lang/Object;
.source "ProtocolApi.java"


# virtual methods
.method public abstract getProtocolList()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/agreements"
    .end annotation
.end method

.method public abstract getProtocolList(Lcn/codemao/android/account/bean/ProtocolsListRequest;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/ProtocolsListRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ProtocolsListRequest;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/ProtocolsListResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/protocol/list"
    .end annotation
.end method

.method public abstract getProtocolsStatus(Ljava/lang/String;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/agreements/need-sign"
    .end annotation
.end method

.method public abstract signProtocols(Ljava/lang/String;Lcn/codemao/android/account/bean/SignProtocolsRequest;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2  # Lcn/codemao/android/account/bean/SignProtocolsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/SignProtocolsRequest;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/agreements/sign"
    .end annotation
.end method
