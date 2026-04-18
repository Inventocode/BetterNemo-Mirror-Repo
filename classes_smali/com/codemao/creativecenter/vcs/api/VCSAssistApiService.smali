.class public interface abstract Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;
.super Ljava/lang/Object;
.source "VCSAssistApiService.kt"


# virtual methods
.method public abstract applyWork(Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;)Lio/reactivex/Observable;
    .param p1  # Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/creation-tools/assist/applyWork"
    .end annotation
.end method

.method public abstract deleteAssistor(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "assistant_id"
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

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/creation-tools/assist/deleteAssistant"
    .end annotation
.end method

.method public abstract fetchAssistorInfos(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "work_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/creation-tools/assist/list"
    .end annotation
.end method

.method public abstract generateAssistCode(Ljava/util/Map;)Lio/reactivex/Observable;
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
            "Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/creation-tools/assist/generateMiaoCode"
    .end annotation
.end method

.method public abstract recoverWork(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "work_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/creation-tools/assist/backWork"
    .end annotation
.end method

.method public abstract syncWork(Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;)Lio/reactivex/Observable;
    .param p1  # Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/creation-tools/assist/syncWork"
    .end annotation
.end method

.method public abstract toggleAssistMode(Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1  # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/creation-tools/assist/updateStatus"
    .end annotation
.end method
