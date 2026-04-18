.class Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;
.super Ljava/lang/Object;
.source "DiscoverySearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/DiscoverySearchActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;->this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 2

    if-nez p1, :cond_1d

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;->this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;->this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->access$000(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;->this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->access$000(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->scrollToTop()V

    :cond_1d
    return-void
.end method
