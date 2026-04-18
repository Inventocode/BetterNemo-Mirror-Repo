.class Lcom/codemao/nemo/fragment/MineFragmentCopy$3;
.super Ljava/lang/Object;
.source "MineFragmentCopy.java"

# interfaces
.implements Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragmentCopy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x0

    if-nez p1, :cond_15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "我的-点击草稿箱tab"

    .line 206
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1c

    :cond_15
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "我的-点击已发布tab"

    .line 208
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    if-nez p1, :cond_39

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->access$000(Lcom/codemao/nemo/fragment/MineFragmentCopy;)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 212
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->access$000(Lcom/codemao/nemo/fragment/MineFragmentCopy;)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->scrollToTop()V

    :cond_39
    const/4 v0, 0x1

    if-ne p1, v0, :cond_57

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v0, :cond_57

    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->access$100(Lcom/codemao/nemo/fragment/MineFragmentCopy;)Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->access$100(Lcom/codemao/nemo/fragment/MineFragmentCopy;)Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->scrollToTop()V

    :cond_57
    return-void
.end method
