.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;


# direct methods
.method public static synthetic $r8$lambda$5GAoX_7Fs3V4Bfjg5pfeuaHQyfo(Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;Lcom/codemao/nemo/bean/EventInfo;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->lambda$onNext$0(Lcom/codemao/nemo/bean/EventInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DxLN2qUWyPPKL9OdRRJCfGLMmh4()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->lambda$onComplete$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$_a5F8u1umC0zJ0kwOoKSuyefsZ8()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->lambda$onError$1()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;)V
    .registers 2

    .line 1018
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onComplete$2()V
    .registers 1

    .line 1038
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    return-void
.end method

.method private static synthetic lambda$onError$1()V
    .registers 1

    .line 1030
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    return-void
.end method

.method private synthetic lambda$onNext$0(Lcom/codemao/nemo/bean/EventInfo;Ljava/lang/String;Z)V
    .registers 6

    .line 1023
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1, p3}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$500(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 5

    .line 1037
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$needShowLevelInfo:Z

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_13

    .line 1038
    sget-object v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda1;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 1029
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    iget-boolean v0, p1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$needShowLevelInfo:Z

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz p1, :cond_13

    .line 1030
    sget-object v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda2;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 1018
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .registers 6

    .line 1021
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$path:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->writeResponseBody(Ljava/lang/String;Lokhttp3/ResponseBody;)V

    .line 1022
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->this$1:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_1d

    .line 1023
    iget-object v1, p1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$eventInfo:Lcom/codemao/nemo/bean/EventInfo;

    iget-object v2, p1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$path:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$needShowLevelInfo:Z

    new-instance v3, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;Lcom/codemao/nemo/bean/EventInfo;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void
.end method
