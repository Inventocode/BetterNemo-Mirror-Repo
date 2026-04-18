.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;
.super Ljava/lang/Object;
.source "MineCommonAppbarFragment.kt"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initAppbarOffset(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $leftView:Landroid/widget/ImageView;

.field final synthetic $rightView:Landroid/widget/ImageView;

.field final synthetic $tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic $toolbarContainer:Landroid/view/View;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;",
            "Landroid/view/View;",
            "Lcom/google/android/material/tabs/TabLayout;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$toolbarContainer:Landroid/view/View;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iput-object p4, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$leftView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$rightView:Landroid/widget/ImageView;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 7

    const-string p1, "tablayout"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x14

    if-ge p2, v2, :cond_88

    .line 91
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$getTabLayoutIsTopStyle$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)Z

    move-result p2

    if-eqz p2, :cond_11

    return-void

    .line 94
    :cond_11
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-static {p2, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$setTabLayoutIsTopStyle$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Z)V

    .line 95
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$toolbarContainer:Landroid/view/View;

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "offsetChanged,dark"

    .line 96
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$changeTabStyle(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Lcom/google/android/material/tabs/TabLayout;)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_34
    if-ge p2, p1, :cond_58

    .line 99
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 100
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v3

    if-ne v3, v0, :cond_46

    const/4 v3, 0x1

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    if-eqz v3, :cond_55

    .line 101
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_55

    const v3, 0x7f0806a3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_55
    add-int/lit8 p2, p2, 0x1

    goto :goto_34

    .line 107
    :cond_58
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const p2, 0x7f080634

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$leftView:Landroid/widget/ImageView;

    const p2, 0x7f0e0180

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$rightView:Landroid/widget/ImageView;

    const p2, 0x7f0e017e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setDark(Z)V

    .line 112
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble()Z

    move-result p1

    if-eqz p1, :cond_112

    .line 113
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    goto/16 :goto_112

    .line 117
    :cond_88
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$getTabLayoutIsTopStyle$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)Z

    move-result p2

    if-nez p2, :cond_91

    return-void

    .line 120
    :cond_91
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-static {p2, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$setTabLayoutIsTopStyle$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Z)V

    .line 121
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$toolbarContainer:Landroid/view/View;

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "offsetChanged,light"

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$changeTabStyle(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Lcom/google/android/material/tabs/TabLayout;)V

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_ba
    if-ge p2, p1, :cond_de

    .line 126
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_cc

    .line 127
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v3

    if-ne v3, v0, :cond_cc

    const/4 v3, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v3, 0x0

    :goto_cd
    if-eqz v3, :cond_db

    .line 128
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_db

    const v3, 0x7f0806a5

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_db
    add-int/lit8 p2, p2, 0x1

    goto :goto_ba

    .line 134
    :cond_de
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const p2, 0x7f080658

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    .line 135
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$rightView:Landroid/widget/ImageView;

    const p2, 0x7f0e017f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    :cond_f4
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->$leftView:Landroid/widget/ImageView;

    const p2, 0x7f0e0181

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setDark(Z)V

    .line 142
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble()Z

    move-result p1

    if-eqz p1, :cond_112

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    :cond_112
    :goto_112
    return-void
.end method
