.class public Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;
.source "CreativeItemAdapterMaterialLeftBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/Space;

.field private final mboundView2:Landroid/widget/FrameLayout;

.field private final mboundView3:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x4

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Space;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 290
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView1:Landroid/widget/Space;

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView2:Landroid/widget/FrameLayout;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 48
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView3:Landroid/view/View;

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->spBottom:Landroid/widget/Space;

    invoke-virtual {p1, v0}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 28

    move-object/from16 v1, p0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 130
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    .line 131
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b0

    .line 135
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->mData:Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    .line 139
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->mIsFirst:Ljava/lang/Boolean;

    .line 144
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->mIsPadMode:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const-wide/16 v9, 0x9

    and-long v11, v2, v9

    const/4 v13, 0x0

    cmp-long v14, v11, v4

    if-eqz v14, :cond_36

    if-eqz v0, :cond_23

    .line 156
    iget-boolean v8, v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->isSelect:Z

    .line 158
    iget v11, v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->srcRes:I

    .line 160
    iget-object v0, v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->name:Ljava/lang/String;

    goto :goto_26

    :cond_23
    move-object v0, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_26
    if-eqz v14, :cond_30

    if-eqz v8, :cond_2d

    const-wide/16 v14, 0x2000

    goto :goto_2f

    :cond_2d
    const-wide/16 v14, 0x1000

    :goto_2f
    or-long/2addr v2, v14

    :cond_30
    if-eqz v8, :cond_34

    const/4 v8, 0x0

    goto :goto_39

    :cond_34
    const/4 v8, 0x4

    goto :goto_39

    :cond_36
    move-object v0, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_39
    const-wide/16 v14, 0xe

    and-long v16, v2, v14

    const-wide/32 v18, 0x8000

    const-wide/16 v20, 0x4000

    const-wide/16 v22, 0xc

    cmp-long v24, v16, v4

    if-eqz v24, :cond_e5

    .line 180
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    and-long v16, v2, v22

    cmp-long v7, v16, v4

    if-eqz v7, :cond_7d

    if-eqz v13, :cond_68

    const-wide/16 v16, 0x20

    or-long v2, v2, v16

    const-wide/16 v16, 0x80

    or-long v2, v2, v16

    const-wide/16 v16, 0x200

    or-long v2, v2, v16

    const-wide/16 v16, 0x800

    or-long v2, v2, v16

    const-wide/32 v16, 0x20000

    goto :goto_7b

    :cond_68
    const-wide/16 v16, 0x10

    or-long v2, v2, v16

    const-wide/16 v16, 0x40

    or-long v2, v2, v16

    const-wide/16 v16, 0x100

    or-long v2, v2, v16

    const-wide/16 v16, 0x400

    or-long v2, v2, v16

    const-wide/32 v16, 0x10000

    :goto_7b
    or-long v2, v2, v16

    :cond_7d
    and-long v16, v2, v14

    cmp-long v7, v16, v4

    if-eqz v7, :cond_8a

    if-eqz v13, :cond_88

    or-long v2, v2, v18

    goto :goto_8a

    :cond_88
    or-long v2, v2, v20

    :cond_8a
    :goto_8a
    and-long v16, v2, v22

    cmp-long v7, v16, v4

    if-eqz v7, :cond_e5

    .line 209
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v13, :cond_9b

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_26dp:I

    goto :goto_9d

    :cond_9b
    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_24dp:I

    :goto_9d
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    if-eqz v13, :cond_b0

    .line 211
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    goto :goto_b1

    :cond_b0
    const/4 v9, 0x0

    .line 213
    :goto_b1
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v13, :cond_bc

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    goto :goto_be

    :cond_bc
    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    :goto_be
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 215
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->spBottom:Landroid/widget/Space;

    invoke-virtual {v12}, Landroid/widget/Space;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v13, :cond_cd

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    goto :goto_cf

    :cond_cd
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_cf
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 217
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView2:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v13, :cond_de

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    goto :goto_e0

    :cond_de
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    :goto_e0
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    goto :goto_ea

    :cond_e5
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_ea
    const-wide/32 v25, 0xc000

    and-long v25, v2, v25

    cmp-long v15, v25, v4

    if-eqz v15, :cond_156

    .line 227
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    and-long v25, v2, v20

    cmp-long v15, v25, v4

    if-eqz v15, :cond_108

    if-eqz v6, :cond_103

    const-wide/32 v25, 0x80000

    goto :goto_106

    :cond_103
    const-wide/32 v25, 0x40000

    :goto_106
    or-long v2, v2, v25

    :cond_108
    and-long v25, v2, v18

    cmp-long v15, v25, v4

    if-eqz v15, :cond_119

    if-eqz v6, :cond_114

    const-wide/32 v25, 0x200000

    goto :goto_117

    :cond_114
    const-wide/32 v25, 0x100000

    :goto_117
    or-long v2, v2, v25

    :cond_119
    and-long v20, v2, v20

    cmp-long v15, v20, v4

    if-eqz v15, :cond_13b

    if-eqz v6, :cond_12e

    .line 248
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView1:Landroid/widget/Space;

    invoke-virtual {v15}, Landroid/widget/Space;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_0dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_13c

    :cond_12e
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView1:Landroid/widget/Space;

    invoke-virtual {v4}, Landroid/widget/Space;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_13c

    :cond_13b
    const/4 v4, 0x0

    :goto_13c
    and-long v17, v2, v18

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    if-eqz v5, :cond_157

    .line 253
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView1:Landroid/widget/Space;

    invoke-virtual {v5}, Landroid/widget/Space;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_14f

    sget v6, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_0dp:I

    goto :goto_151

    :cond_14f
    sget v6, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    :goto_151
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_158

    :cond_156
    const/4 v4, 0x0

    :cond_157
    const/4 v5, 0x0

    :goto_158
    const-wide/16 v17, 0xe

    and-long v17, v2, v17

    const-wide/16 v19, 0x0

    cmp-long v6, v17, v19

    if-eqz v6, :cond_166

    if-eqz v13, :cond_167

    move v4, v5

    goto :goto_167

    :cond_166
    const/4 v4, 0x0

    :cond_167
    :goto_167
    and-long v15, v2, v22

    cmp-long v5, v15, v19

    if-eqz v5, :cond_190

    .line 266
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v5, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 267
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v5, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 268
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView2:Landroid/widget/FrameLayout;

    invoke-static {v5, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 269
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView2:Landroid/widget/FrameLayout;

    invoke-static {v5, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 270
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->spBottom:Landroid/widget/Space;

    invoke-static {v5, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 271
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v5, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextSize(Landroid/widget/TextView;F)V

    .line 272
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v5, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    :cond_190
    const-wide/16 v9, 0x9

    and-long/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-eqz v5, :cond_1a8

    .line 277
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v2, v11}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindImgRes(Landroid/widget/ImageView;I)V

    .line 278
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView3:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a8
    if-eqz v6, :cond_1af

    .line 284
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mboundView1:Landroid/widget/Space;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    :cond_1af
    return-void

    :catchall_1b0
    move-exception v0

    .line 131
    :try_start_1b1
    monitor-exit p0
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_1b0

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 60
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 62
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 61
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

.method public setData(Lcom/codemao/creativecenter/bean/MaterialLeftBean;)V
    .registers 6

    .line 94
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->mData:Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 98
    sget p1, Lcom/codemao/creativecenter/BR;->data:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 97
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsFirst(Ljava/lang/Boolean;)V
    .registers 6

    .line 102
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->mIsFirst:Ljava/lang/Boolean;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 106
    sget p1, Lcom/codemao/creativecenter/BR;->isFirst:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 105
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsPadMode(Ljava/lang/Boolean;)V
    .registers 6

    .line 110
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 114
    sget p1, Lcom/codemao/creativecenter/BR;->isPadMode:I

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

    .line 78
    sget v0, Lcom/codemao/creativecenter/BR;->data:I

    if-ne v0, p1, :cond_a

    .line 79
    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->setData(Lcom/codemao/creativecenter/bean/MaterialLeftBean;)V

    goto :goto_1d

    .line 81
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->isFirst:I

    if-ne v0, p1, :cond_14

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->setIsFirst(Ljava/lang/Boolean;)V

    goto :goto_1d

    .line 84
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->isPadMode:I

    if-ne v0, p1, :cond_1f

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;->setIsPadMode(Ljava/lang/Boolean;)V

    :goto_1d
    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method
