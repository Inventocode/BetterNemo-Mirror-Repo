.class public abstract Lcom/codemao/nemo/databinding/FragmentMineV3Binding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineV3Binding.java"


# instance fields
.field public final root:Landroid/widget/FrameLayout;

.field public final vpContainer:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 6

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 27
    iput-object p4, p0, Lcom/codemao/nemo/databinding/FragmentMineV3Binding;->root:Landroid/widget/FrameLayout;

    .line 28
    iput-object p5, p0, Lcom/codemao/nemo/databinding/FragmentMineV3Binding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method
