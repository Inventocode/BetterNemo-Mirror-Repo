.class Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;
.super Ljava/lang/Object;
.source "RecommendNewActiveDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->getDetailClickListener(Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Landroid/content/Context;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Landroid/content/Context;)V
    .registers 4

    .line 167
    iput-object p2, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 171
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 177
    :cond_7
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    .line 178
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getActiveId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setActiveId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "推荐页-点击查看活动"

    .line 175
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    iget-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getSchemeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    return-void
.end method
