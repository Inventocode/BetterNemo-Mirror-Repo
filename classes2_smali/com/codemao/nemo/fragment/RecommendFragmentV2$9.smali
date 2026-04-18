.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;
.super Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->showHongbao(Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

.field final synthetic val$needShowUserLevel:Z


# direct methods
.method public static synthetic $r8$lambda$8v2OeKieP7EmmB3qixIGDdPhuaA()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;->lambda$onDismiss$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Z)V
    .registers 3

    .line 989
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iput-boolean p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;->val$needShowUserLevel:Z

    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onDismiss$0()V
    .registers 1

    .line 993
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 5

    .line 992
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;->val$needShowUserLevel:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_11

    .line 993
    sget-object v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/fragment/RecommendFragmentV2$9$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method
