.class public abstract Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemMainMineWorkBinding.java"


# instance fields
.field public final block:Lcom/ljwx/view/SplitTextView;

.field public final classifyModel:Landroid/widget/TextView;

.field public final imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

.field protected mItem:Lcom/codemao/nemo/bean/KnWorkListItem;

.field public final menuContainer:Landroid/widget/FrameLayout;

.field public final publish:Landroid/widget/ImageView;

.field public final role:Lcom/ljwx/view/SplitTextView;

.field public final workModel:Landroid/widget/TextView;

.field public final workTime:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/view/SplitTextView;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/ljwx/view/SplitTextView;Landroid/widget/TextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;)V
    .registers 22

    move-object v0, p0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->block:Lcom/ljwx/view/SplitTextView;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->classifyModel:Landroid/widget/TextView;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->menuContainer:Landroid/widget/FrameLayout;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->publish:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->role:Lcom/ljwx/view/SplitTextView;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workModel:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 100
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workTime:Landroid/widget/TextView;

    return-void
.end method
