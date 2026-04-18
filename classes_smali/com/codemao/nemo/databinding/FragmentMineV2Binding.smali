.class public abstract Lcom/codemao/nemo/databinding/FragmentMineV2Binding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineV2Binding.java"


# instance fields
.field public final root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/airbnb/lottie/LottieAnimationView;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/widget/TextView;Lcom/codemao/nemo/view/RoundStrokeImageView;Lcom/codemao/nemo/view/RoundStrokeImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Lcom/codemao/nemo/view/NoScrollViewPager;)V
    .registers 26

    move-object v0, p0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p13

    .line 103
    iput-object v1, v0, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v1, p14

    .line 104
    iput-object v1, v0, Lcom/codemao/nemo/databinding/FragmentMineV2Binding;->toolbar:Lcom/codemao/nemo/databinding/FragmentMineV2TopToolbarBinding;

    return-void
.end method
