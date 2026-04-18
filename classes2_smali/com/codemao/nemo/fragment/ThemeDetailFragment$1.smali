.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iput p2, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appbarOffset:I

    .line 176
    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$000(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 180
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$102(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)I

    .line 181
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$100(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result p1

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x5

    if-gt p2, p1, :cond_5f

    .line 182
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 183
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_work:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolbar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800e4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$200(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivExit:Landroid/widget/ImageView;

    const v0, 0x7f08045d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    .line 188
    :cond_5f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2, v2}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 189
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolbar:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_work:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivExit:Landroid/widget/ImageView;

    const v0, 0x7f08045e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :goto_8a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$100(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result p1

    neg-int p1, p1

    if-gt p2, p1, :cond_9b

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->vWhtie:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a4

    .line 197
    :cond_9b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->vWhtie:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_a4
    return-void
.end method
