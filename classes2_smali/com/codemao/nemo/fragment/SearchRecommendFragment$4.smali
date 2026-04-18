.class Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;
.super Ljava/lang/Object;
.source "SearchRecommendFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/SearchRecommendFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClick(Landroid/view/View;ILcom/codemao/nemo/view/flowlayout/FlowLayout;)Z
    .registers 4

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_e

    goto :goto_26

    :cond_e
    new-array p1, p3, [Ljava/lang/String;

    const-string p3, "搜索页-主页-点击推荐关键词"

    .line 129
    invoke-static {p3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 131
    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-static {p2, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->access$000(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_26
    return p3
.end method
