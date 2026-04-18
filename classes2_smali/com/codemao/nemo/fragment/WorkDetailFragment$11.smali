.class Lcom/codemao/nemo/fragment/WorkDetailFragment$11;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->setUserLevelInfo(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

.field final synthetic val$authorLevel:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;I)V
    .registers 3

    .line 728
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;->val$authorLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 731
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "作品详情页-点击作者徽章"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 732
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;->val$authorLevel:I

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V

    return-void
.end method
