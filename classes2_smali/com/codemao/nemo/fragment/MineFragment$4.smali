.class Lcom/codemao/nemo/fragment/MineFragment$4;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$4;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

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
    .registers 4

    const-string v0, "我的-草稿箱"

    const-string v1, "我的-已发布"

    if-nez p1, :cond_12

    .line 284
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$4;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_1e

    .line 287
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$4;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {p1, v1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    move-object v0, v1

    .line 289
    :goto_1e
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getCurViewName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    return-void

    :cond_29
    const/4 p1, 0x0

    .line 292
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$4;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
