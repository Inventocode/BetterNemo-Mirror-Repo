.class Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;
.super Ljava/lang/Object;
.source "DiscoveryFragmentV2.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$000(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 238
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_43

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$100(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/MainActivityV2;

    if-eqz p1, :cond_43

    .line 239
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getCurrentViewName()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_43
    return-void
.end method
