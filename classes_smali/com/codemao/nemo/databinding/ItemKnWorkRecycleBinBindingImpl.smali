.class public Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;
.super Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;
.source "ItemKnWorkRecycleBinBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a032e

    const/16 v2, 0x9

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a052b

    const/16 v2, 0xa

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00c3

    const/16 v2, 0xb

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a05f0

    const/16 v2, 0xc

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a016d

    const/16 v2, 0xd

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 32
    sget-object v0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x7

    .line 35
    aget-object v4, p3, v4

    check-cast v4, Lcom/ljwx/view/SplitTextView;

    const/16 v5, 0xb

    aget-object v5, p3, v5

    check-cast v5, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/16 v6, 0xd

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v7, 0x1

    aget-object v7, p3, v7

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v8, 0x2

    aget-object v8, p3, v8

    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v9, 0x3

    aget-object v9, p3, v9

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v10, 0x9

    aget-object v10, p3, v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v11, 0xa

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/16 v12, 0x8

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/FrameLayout;

    const/16 v13, 0xc

    aget-object v13, p3, v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v14, 0x6

    aget-object v14, p3, v14

    check-cast v14, Lcom/ljwx/view/SplitTextView;

    const/4 v15, 0x4

    aget-object v15, p3, v15

    check-cast v15, Lcom/ljwx/baseview/text/DrawableTextView;

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/view/SplitTextView;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/ljwx/view/SplitTextView;Lcom/ljwx/baseview/text/DrawableTextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 199
    iput-wide v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    .line 50
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->block:Lcom/ljwx/view/SplitTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 54
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->role:Lcom/ljwx/view/SplitTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->workName:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v2, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->workTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 60
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 20

    move-object/from16 v1, p0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 116
    iput-wide v4, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_ca

    .line 120
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->mItem:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_8a

    if-eqz v0, :cond_3b

    .line 137
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getMenuOpen()Z

    move-result v8

    .line 139
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getLandscape()Z

    move-result v9

    .line 141
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getRoles()Ljava/lang/String;

    move-result-object v10

    .line 143
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getBlocks()Ljava/lang/String;

    move-result-object v13

    .line 145
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v14

    .line 147
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->showTime()Ljava/lang/String;

    move-result-object v15

    .line 149
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v13

    move-object v13, v0

    move-object v0, v10

    move-object/from16 v10, v18

    goto :goto_41

    :cond_3b
    move-object v0, v10

    move-object v13, v0

    move-object v14, v13

    move-object v15, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_41
    if-eqz v12, :cond_4c

    if-eqz v8, :cond_48

    const-wide/16 v16, 0x80

    goto :goto_4a

    :cond_48
    const-wide/16 v16, 0x40

    :goto_4a
    or-long v2, v2, v16

    :cond_4c
    and-long v16, v2, v6

    cmp-long v12, v16, v4

    if-eqz v12, :cond_63

    if-eqz v9, :cond_5b

    const-wide/16 v16, 0x8

    or-long v2, v2, v16

    const-wide/16 v16, 0x20

    goto :goto_61

    :cond_5b
    const-wide/16 v16, 0x4

    or-long v2, v2, v16

    const-wide/16 v16, 0x10

    :goto_61
    or-long v2, v2, v16

    :cond_63
    const/16 v12, 0x8

    if-eqz v8, :cond_69

    const/4 v8, 0x0

    goto :goto_6b

    :cond_69
    const/16 v8, 0x8

    :goto_6b
    if-eqz v9, :cond_70

    const/16 v16, 0x0

    goto :goto_72

    :cond_70
    const/16 v16, 0x8

    :goto_72
    if-eqz v9, :cond_75

    goto :goto_76

    :cond_75
    const/4 v12, 0x0

    .line 178
    :goto_76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 v9, v16

    goto :goto_91

    :cond_8a
    move-object v0, v10

    move-object v13, v0

    move-object v14, v13

    move-object v15, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_91
    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c9

    .line 184
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->block:Lcom/ljwx/view/SplitTextView;

    invoke-static {v2, v10}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    .line 185
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageBg:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v3, 0x1

    invoke-static {v2, v14, v3}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 186
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageLand:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v14, v11}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 188
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->imageVertical:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v14, v11}, Lcom/codemao/nemo/common/ImageViewAdapter;->loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 190
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    iget-object v2, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->role:Lcom/ljwx/view/SplitTextView;

    invoke-static {v2, v0}, Lcom/codemao/nemo/common/SplitTextViewAdapter;->setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V

    .line 192
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->workName:Lcom/ljwx/baseview/text/DrawableTextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, v1, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->workTime:Landroid/widget/TextView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c9
    return-void

    :catchall_ca
    move-exception v0

    .line 117
    :try_start_cb
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 77
    monitor-exit p0

    return v0

    .line 79
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

    .line 67
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 68
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    .line 69
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 70
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 69
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

.method public setItem(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V
    .registers 6

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBinding;->mItem:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x10

    .line 100
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 99
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

    .line 87
    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/databinding/ItemKnWorkRecycleBinBindingImpl;->setItem(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
