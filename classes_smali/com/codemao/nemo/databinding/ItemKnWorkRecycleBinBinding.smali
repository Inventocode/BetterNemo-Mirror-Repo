.class public abstract Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemKnWorkRecycleBinBinding.java"


# instance fields
.field public final block:Lcom/ljwx/view/SplitTextView;

.field public final imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

.field protected mItem:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

.field public final menuContainer:Landroid/widget/FrameLayout;

.field public final role:Lcom/ljwx/view/SplitTextView;

.field public final workName:Lcom/ljwx/baseview/text/DrawableTextView;

.field public final workTime:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/view/SplitTextView;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/ljwx/view/SplitTextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;)V
    .registers 19

    move-object v0, p0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 75
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->block:Lcom/ljwx/view/SplitTextView;

    move-object v1, p7

    .line 78
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p8

    .line 79
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p9

    .line 80
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p12

    .line 83
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->menuContainer:Landroid/widget/FrameLayout;

    move-object/from16 v1, p14

    .line 85
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->role:Lcom/ljwx/view/SplitTextView;

    move-object/from16 v1, p15

    .line 86
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->workName:Lcom/ljwx/baseview/text/DrawableTextView;

    move-object/from16 v1, p16

    .line 87
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->workTime:Landroid/widget/TextView;

    return-void
.end method
