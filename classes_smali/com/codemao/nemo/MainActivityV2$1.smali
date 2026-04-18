.class Lcom/codemao/nemo/MainActivityV2$1;
.super Ljava/lang/Object;
.source "MainActivityV2.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainActivityV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/MainActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

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

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "主页面-点击发现"

    .line 329
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    iget-object p1, p1, Lcom/codemao/nemo/MainActivityV2;->rgBottom:Landroid/widget/RadioGroup;

    const v0, 0x7f0a01e0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p1}, Lcom/codemao/nemo/MainActivityV2;->access$000(Lcom/codemao/nemo/MainActivityV2;)Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 332
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p1}, Lcom/codemao/nemo/MainActivityV2;->access$000(Lcom/codemao/nemo/MainActivityV2;)Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getCurrentViewName()Ljava/lang/String;

    move-result-object p1

    .line 333
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_5b

    :cond_2c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_58

    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "主页面-点击我的"

    .line 336
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    iget-object p1, p1, Lcom/codemao/nemo/MainActivityV2;->rgBottom:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0535

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 338
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p1}, Lcom/codemao/nemo/MainActivityV2;->access$100(Lcom/codemao/nemo/MainActivityV2;)Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p1}, Lcom/codemao/nemo/MainActivityV2;->access$100(Lcom/codemao/nemo/MainActivityV2;)Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->getCurrentViewName()Ljava/lang/String;

    move-result-object p1

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_5b

    :cond_58
    const-string/jumbo p1, "推荐页"

    .line 343
    :goto_5b
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getCurViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    return-void

    :cond_66
    const/4 v0, 0x0

    .line 346
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2$1;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
