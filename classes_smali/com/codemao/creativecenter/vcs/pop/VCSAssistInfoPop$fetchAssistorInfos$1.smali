.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->fetchAssistorInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/Response;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    check-cast v0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->getAssistantInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_48

    .line 249
    :cond_21
    sget-object v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2c
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    const-string v3, "originBcm.workId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->zipAssistorAndVersion(Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;Ljava/lang/String;)V

    .line 250
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4c

    .line 247
    :cond_48
    :goto_48
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_4c
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 61
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$1;->apply(Lretrofit2/Response;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
