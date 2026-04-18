.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getEventInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/EventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

.field final synthetic val$needGetuserLevel:Z


# direct methods
.method public static synthetic $r8$lambda$U5gPhrjaNk4GdMBMOGfD_ZzJouc()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->lambda$onNetError$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ls5U7HWVjyIqyZqoxdCR6zH7kAo()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->lambda$onFailure$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Z)V
    .registers 3

    .line 1063
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iput-boolean p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->val$needGetuserLevel:Z

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onFailure$0()V
    .registers 1

    .line 1072
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    return-void
.end method

.method private static synthetic lambda$onNetError$1()V
    .registers 1

    .line 1080
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1071
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->val$needGetuserLevel:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz p1, :cond_11

    .line 1072
    sget-object p2, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/nemo/fragment/RecommendFragmentV2$11$$ExternalSyntheticLambda1;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1079
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->val$needGetuserLevel:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz p1, :cond_11

    .line 1080
    sget-object p2, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/fragment/RecommendFragmentV2$11$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/EventInfo;)V
    .registers 4

    .line 1066
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-boolean v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->val$needGetuserLevel:Z

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$600(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lcom/codemao/nemo/bean/EventInfo;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1063
    check-cast p1, Lcom/codemao/nemo/bean/EventInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;->onSuccess(Lcom/codemao/nemo/bean/EventInfo;)V

    return-void
.end method
