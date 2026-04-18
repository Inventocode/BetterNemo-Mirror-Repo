.class Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$2;
.super Ljava/lang/Object;
.source "RecommendNewWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->getViewOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 156
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "推荐页-点击更多新作"

    .line 159
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    const-string/jumbo v1, "新作喵喵看"

    const-string/jumbo v2, "推荐页"

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/CmDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
