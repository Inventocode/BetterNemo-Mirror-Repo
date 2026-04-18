.class Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .registers 2

    .line 585
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyOnDismissListener()V
    .registers 2

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_9

    .line 665
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-eq p1, v1, :cond_19

    .line 632
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_13

    const/4 p1, 0x0

    .line 633
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 634
    iget p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void

    .line 636
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 624
    :cond_19
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 625
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    .line 626
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 p1, 0x0

    throw p1
.end method

.method public onDismiss()V
    .registers 3

    .line 657
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 659
    invoke-virtual {v0, v1}, Landroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_d
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 591
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 592
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p2, 0x1

    if-ne p1, p2, :cond_18

    .line 595
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    goto :goto_2c

    .line 616
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 598
    :cond_1e
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 599
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean p2, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    const/4 p4, 0x0

    if-eqz p2, :cond_33

    if-gtz p3, :cond_2d

    :goto_2c
    return-void

    .line 602
    :cond_2d
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    throw p4

    .line 607
    :cond_33
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    .line 608
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    throw p4
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 643
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_19

    .line 644
    iget-object p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_18

    .line 645
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 646
    iget v1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    :cond_18
    return v0

    .line 649
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
