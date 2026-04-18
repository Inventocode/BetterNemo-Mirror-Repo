.class public final Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MineSearchMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->initViewPagerAndTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    .line 118
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 5

    .line 121
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 122
    sget-object v0, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mine_tab_change"

    invoke-virtual {v0, v2, v1}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    goto :goto_46

    .line 127
    :cond_15
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getSearchView(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string/jumbo v0, "搜索Nemo作品"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getRootView(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const v0, 0x7f080630

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_46

    .line 124
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getSearchView(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string/jumbo v0, "搜索KittenN作品"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getRootView(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const v0, 0x7f08062f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_46
    return-void
.end method
