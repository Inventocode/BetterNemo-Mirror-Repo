.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;
.source "CreativeLayoutItemThemeListBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_count:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_theme_name:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 29
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 13

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;Landroid/widget/TextView;Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 157
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    .line 38
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 14

    .line 96
    monitor-enter p0

    .line 97
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 98
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_be

    const/4 v4, 0x0

    .line 102
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v6, 0x3

    and-long v8, v0, v6

    const/4 v10, 0x0

    cmp-long v11, v8, v2

    if-eqz v11, :cond_9c

    .line 113
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v11, :cond_3a

    if-eqz v4, :cond_2b

    const-wide/16 v8, 0x8

    or-long/2addr v0, v8

    const-wide/16 v8, 0x20

    or-long/2addr v0, v8

    const-wide/16 v8, 0x80

    or-long/2addr v0, v8

    const-wide/16 v8, 0x200

    or-long/2addr v0, v8

    const-wide/16 v8, 0x800

    goto :goto_39

    :cond_2b
    const-wide/16 v8, 0x4

    or-long/2addr v0, v8

    const-wide/16 v8, 0x10

    or-long/2addr v0, v8

    const-wide/16 v8, 0x40

    or-long/2addr v0, v8

    const-wide/16 v8, 0x100

    or-long/2addr v0, v8

    const-wide/16 v8, 0x400

    :goto_39
    or-long/2addr v0, v8

    .line 133
    :cond_3a
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v4, :cond_45

    sget v8, Lcom/codemao/creativecenter/R$string;->creative_str_theme_list_item_ratio_pad:I

    goto :goto_47

    :cond_45
    sget v8, Lcom/codemao/creativecenter/R$string;->creative_str_theme_list_item_ratio:I

    :goto_47
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    iget-object v8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_56

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    goto :goto_58

    :cond_56
    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    :goto_58
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move v10, v8

    .line 137
    iget-object v8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_68

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    goto :goto_6a

    :cond_68
    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    :goto_6a
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 139
    iget-object v9, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v4, :cond_79

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_7b

    :cond_79
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_7b
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v4, :cond_8a

    .line 141
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_88dp:I

    goto :goto_92

    :cond_8a
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    :goto_92
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v12, v8

    move v8, v4

    move-object v4, v5

    move v5, v10

    move v10, v12

    goto :goto_9f

    :cond_9c
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_9f
    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_bd

    .line 147
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setConstraintDimensionRatio(Landroid/view/View;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 149
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setRoundImageCornerRadius(Landroid/view/View;F)V

    .line 150
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 151
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    :cond_bd
    return-void

    :catchall_be
    move-exception v0

    .line 99
    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 57
    monitor-enter p0

    .line 58
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 50
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 52
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 51
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

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 78
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->mIsPad:Ljava/lang/Boolean;

    .line 79
    monitor-enter p0

    .line 80
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->mDirtyFlags:J

    .line 81
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 82
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 83
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 81
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 68
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_b

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
