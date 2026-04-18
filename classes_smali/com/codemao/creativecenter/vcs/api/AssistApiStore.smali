.class public final Lcom/codemao/creativecenter/vcs/api/AssistApiStore;
.super Ljava/lang/Object;
.source "AssistApiStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssistApiStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssistApiStore.kt\ncom/codemao/creativecenter/vcs/api/AssistApiStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n1517#2:86\n1588#2,3:87\n*E\n*S KotlinDebug\n*F\n+ 1 AssistApiStore.kt\ncom/codemao/creativecenter/vcs/api/AssistApiStore\n*L\n74#1:86\n74#1,3:87\n*E\n"
.end annotation


# instance fields
.field private final mService$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->mService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->mService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    return-object v0
.end method


# virtual methods
.method public final applyWork(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {p2, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-direct {v0, v3, v4, p1, p2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;-><init>(JJ)V

    .line 66
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->applyWork(Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final deleteAssistor(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
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

    const-string v0, "assistorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->deleteAssistor(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAssistorInfos(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
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

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->fetchAssistorInfos(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final generateAssistCode(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "work_id"

    .line 37
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token_type"

    const-string v1, "0"

    .line 39
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->generateAssistCode(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final recoverWork(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
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

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->recoverWork(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final syncWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "assistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bcmUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;

    const-wide/16 v1, 0x0

    .line 57
    invoke-static {p1, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v3

    .line 58
    invoke-static {p2, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide p1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v2, v3

    move-wide v4, p1

    move-object v6, p3

    .line 56
    invoke-direct/range {v1 .. v9}, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;-><init>(JJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->syncWork(Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final toggleAssistMode(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 29
    invoke-static {p1, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "work_id"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_23

    const-wide/16 p1, 0x1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_27

    :cond_23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_27
    const-string p2, "status"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->getMService()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;->toggleAssistMode(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
