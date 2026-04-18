.class public abstract Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineSearchNemoBinding.java"


# instance fields
.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final viewpager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 6

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 27
    iput-object p4, p0, Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 28
    iput-object p5, p0, Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method
