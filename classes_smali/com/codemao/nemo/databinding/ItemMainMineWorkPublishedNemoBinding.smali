.class public abstract Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemMainMineWorkPublishedNemoBinding.java"


# instance fields
.field public final collectionCount:Lcom/ljwx/baseview/text/DrawableTextView;

.field public final coverImage:Lcom/google/android/material/imageview/ShapeableImageView;

.field protected mItem:Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;

.field public final openSourceFlag:Landroid/widget/ImageView;

.field public final pageView:Lcom/ljwx/baseview/text/DrawableTextView;

.field public final recreateIcon:Landroid/widget/ImageView;

.field public final recreationCount:Lcom/ljwx/baseview/text/DrawableTextView;

.field public final thumbCount:Lcom/ljwx/baseview/text/DrawableTextView;

.field public final workName:Landroid/widget/TextView;

.field public final workTag:Landroid/widget/ImageView;

.field public final workTime:Lcom/ljwx/view/SplitTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/github/mmin18/widget/RealtimeBlurView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/ImageView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/ljwx/view/SplitTextView;)V
    .registers 19

    move-object v0, p0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p5

    .line 75
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->collectionCount:Lcom/ljwx/baseview/text/DrawableTextView;

    move-object v1, p6

    .line 76
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->coverImage:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p8

    .line 78
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->openSourceFlag:Landroid/widget/ImageView;

    move-object v1, p9

    .line 79
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->pageView:Lcom/ljwx/baseview/text/DrawableTextView;

    move-object v1, p10

    .line 80
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->recreateIcon:Landroid/widget/ImageView;

    move-object v1, p11

    .line 81
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->recreationCount:Lcom/ljwx/baseview/text/DrawableTextView;

    move-object v1, p13

    .line 83
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->thumbCount:Lcom/ljwx/baseview/text/DrawableTextView;

    move-object/from16 v1, p14

    .line 84
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workName:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 85
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workTag:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 86
    iput-object v1, v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkPublishedNemoBinding;->workTime:Lcom/ljwx/view/SplitTextView;

    return-void
.end method
