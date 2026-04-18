.class public Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;
.source "ItemMainMineWorkBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView11:Landroid/widget/ImageView;

.field private final mboundView4:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a032e

    const/16 v2, 0xd

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a09b7

    const/16 v2, 0xe

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a052b

    const/16 v2, 0xf

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00c3

    const/16 v2, 0x10

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a05f0

    const/16 v2, 0x11

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a016d

    const/16 v2, 0x12

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 37
    sget-object v0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 25

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x9

    .line 40
    aget-object v4, p3, v4

    check-cast v4, Lcom/ljwx/view/SplitTextView;

    const/16 v5, 0x10

    aget-object v5, p3, v5

    check-cast v5, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/4 v6, 0x5

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x12

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x1

    aget-object v8, p3, v8

    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v9, 0x2

    aget-object v9, p3, v9

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v10, 0x3

    aget-object v10, p3, v10

    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v11, 0xd

    aget-object v11, p3, v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v12, 0xf

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0xc

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v14, 0xa

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/ImageView;

    const/16 v15, 0x11

    aget-object v15, p3, v15

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v16, 0x8

    aget-object v16, p3, v16

    check-cast v16, Lcom/ljwx/view/SplitTextView;

    const/16 v17, 0x6

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0xe

    aget-object v18, p3, v18

    check-cast v18, Lcom/ljwx/baseview/text/DrawableTextView;

    const/16 v19, 0x7

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x0

    move/from16 v3, v20

    invoke-direct/range {v0 .. v19}, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/view/SplitTextView;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/ljwx/view/SplitTextView;Landroid/widget/TextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 289
    iput-wide v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    .line 58
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->block:Lcom/ljwx/view/SplitTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->classifyModel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 63
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 65
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mboundView11:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 67
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mboundView4:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->publish:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->role:Lcom/ljwx/view/SplitTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workModel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 74
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 33

    move-object/from16 v1, p0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 130
    iput-wide v4, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    .line 131
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a2

    .line 138
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->mItem:Lcom/codemao/nemo/bean/KnWorkListItem;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_125

    if-eqz v0, :cond_4a

    .line 162
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getMenuOpen()Z

    move-result v8

    .line 164
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getLandscape()Z

    move-result v9

    .line 166
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getShowCheckFail()Z

    move-result v10

    .line 168
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getPublishedIcon()I

    move-result v13

    .line 170
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getRoles()Ljava/lang/String;

    move-result-object v14

    .line 172
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getClassifyModel()Ljava/lang/String;

    move-result-object v15

    .line 174
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getBlocks()Ljava/lang/String;

    move-result-object v16

    .line 176
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v17

    .line 178
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWorkModel()Ljava/lang/String;

    move-result-object v18

    .line 180
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->showTime()Ljava/lang/String;

    move-result-object v19

    .line 182
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getOpenSource()Z

    move-result v0

    move-object/from16 v31, v16

    move/from16 v16, v13

    move-object/from16 v13, v31

    goto :goto_59

    :cond_4a
    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_59
    if-eqz v12, :cond_66

    if-eqz v8, :cond_61

    const-wide/32 v20, 0x20000

    goto :goto_64

    :cond_61
    const-wide/32 v20, 0x10000

    :goto_64
    or-long v2, v2, v20

    :cond_66
    and-long v20, v2, v6

    cmp-long v12, v20, v4

    if-eqz v12, :cond_7d

    if-eqz v9, :cond_75

    const-wide/16 v20, 0x200

    or-long v2, v2, v20

    const-wide/16 v20, 0x800

    goto :goto_7b

    :cond_75
    const-wide/16 v20, 0x100

    or-long v2, v2, v20

    const-wide/16 v20, 0x400

    :goto_7b
    or-long v2, v2, v20

    :cond_7d
    and-long v20, v2, v6

    cmp-long v12, v20, v4

    if-eqz v12, :cond_95

    if-eqz v10, :cond_8d

    const-wide/16 v20, 0x80

    or-long v2, v2, v20

    const-wide/32 v20, 0x8000

    goto :goto_93

    :cond_8d
    const-wide/16 v20, 0x40

    or-long v2, v2, v20

    const-wide/16 v20, 0x4000

    :goto_93
    or-long v2, v2, v20

    :cond_95
    and-long v20, v2, v6

    cmp-long v12, v20, v4

    if-eqz v12, :cond_a4

    if-eqz v0, :cond_a0

    const-wide/16 v20, 0x8

    goto :goto_a2

    :cond_a0
    const-wide/16 v20, 0x4

    :goto_a2
    or-long v2, v2, v20

    :cond_a4
    if-eqz v8, :cond_a8

    const/4 v8, 0x0

    goto :goto_aa

    :cond_a8
    const/16 v8, 0x8

    :goto_aa
    if-eqz v9, :cond_af

    const/16 v20, 0x0

    goto :goto_b1

    :cond_af
    const/16 v20, 0x8

    :goto_b1
    if-eqz v9, :cond_b6

    const/16 v9, 0x8

    goto :goto_b7

    :cond_b6
    const/4 v9, 0x0

    :goto_b7
    if-eqz v10, :cond_bc

    const/16 v21, 0x0

    goto :goto_be

    :cond_bc
    const/16 v21, 0x8

    :goto_be
    if-eqz v10, :cond_c3

    const/16 v10, 0x8

    goto :goto_c4

    :cond_c3
    const/4 v10, 0x0

    .line 233
    :goto_c4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 235
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 237
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v0, :cond_e1

    const/4 v0, 0x0

    goto :goto_e3

    :cond_e1
    const/16 v0, 0x8

    :goto_e3
    and-long v24, v2, v6

    cmp-long v26, v24, v4

    if-eqz v26, :cond_f2

    if-eqz v22, :cond_ee

    const-wide/16 v24, 0x20

    goto :goto_f0

    :cond_ee
    const-wide/16 v24, 0x10

    :goto_f0
    or-long v2, v2, v24

    :cond_f2
    and-long v24, v2, v6

    cmp-long v26, v24, v4

    if-eqz v26, :cond_101

    if-eqz v13, :cond_fd

    const-wide/16 v24, 0x2000

    goto :goto_ff

    :cond_fd
    const-wide/16 v24, 0x1000

    :goto_ff
    or-long v2, v2, v24

    :cond_101
    if-eqz v22, :cond_106

    const/16 v22, 0x8

    goto :goto_108

    :cond_106
    const/16 v22, 0x0

    :goto_108
    if-eqz v13, :cond_10d

    const/16 v23, 0x8

    goto :goto_10f

    :cond_10d
    const/16 v23, 0x0

    :goto_10f
    move/from16 v29, v16

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move/from16 v11, v20

    move/from16 v13, v22

    move/from16 v30, v23

    move/from16 v18, v10

    move-object v10, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v14

    move/from16 v14, v21

    goto :goto_139

    :cond_125
    move-object v12, v10

    move-object v15, v12

    move-object/from16 v17, v15

    move-object/from16 v27, v17

    move-object/from16 v28, v27

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_139
    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1a1

    .line 267
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->block:Lcom/ljwx/view/SplitTextView;

    invoke-static {v2, v10}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    .line 268
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->classifyModel:Landroid/widget/TextView;

    invoke-static {v2, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->classifyModel:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v3, 0x1

    invoke-static {v2, v12, v3}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 271
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 273
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v12, v3}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 275
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mboundView11:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mboundView4:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->publish:Landroid/widget/ImageView;

    move/from16 v11, v29

    invoke-static {v0, v11}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageRes(Landroid/widget/ImageView;I)V

    .line 279
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->publish:Landroid/widget/ImageView;

    move/from16 v10, v18

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->role:Lcom/ljwx/view/SplitTextView;

    move-object/from16 v10, v17

    invoke-static {v0, v10}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    .line 281
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workModel:Landroid/widget/TextView;

    move-object/from16 v10, v27

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workModel:Landroid/widget/TextView;

    move/from16 v11, v30

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->workTime:Landroid/widget/TextView;

    move-object/from16 v10, v28

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a1
    return-void

    :catchall_1a2
    move-exception v0

    .line 131
    :try_start_1a3
    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 91
    monitor-exit p0

    return v0

    .line 93
    :cond_c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 81
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 82
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 84
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 83
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setItem(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 6

    .line 110
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBinding;->mItem:Lcom/codemao/nemo/bean/KnWorkListItem;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 114
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 113
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    const/16 v0, 0x10

    if-ne v0, p1, :cond_b

    .line 101
    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemMainMineWorkBindingImpl;->setItem(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
