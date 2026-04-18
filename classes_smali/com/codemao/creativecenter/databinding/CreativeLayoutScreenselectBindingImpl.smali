.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;
.source "CreativeLayoutScreenselectBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback77:Landroid/view/View$OnClickListener;

.field private final mCallback78:Landroid/view/View$OnClickListener;

.field private final mCallback79:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 31
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 18

    move-object v10, p0

    const/4 v11, 0x1

    .line 34
    aget-object v0, p3, v11

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v12, 0x3

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v0, -0x1

    .line 284
    iput-wide v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 48
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v12}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mCallback79:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v11}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mCallback77:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v13}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v10, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mCallback78:Landroid/view/View$OnClickListener;

    .line 53
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    goto :goto_4c

    .line 204
    :cond_b
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->mVm:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_4c

    .line 214
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->getCallBack()Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    :cond_1b
    if-eqz p2, :cond_4c

    .line 220
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;->clickScreen()V

    goto :goto_4c

    .line 258
    :cond_21
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->mVm:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_4c

    .line 270
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->getObserverAction()Lcom/codemao/creativecenter/callback/ObserverAction;

    move-result-object p1

    if-eqz p1, :cond_31

    const/4 p2, 0x1

    :cond_31
    if-eqz p2, :cond_4c

    .line 276
    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickAddScene()V

    goto :goto_4c

    .line 230
    :cond_37
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->mVm:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    if-eqz p1, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-eqz v1, :cond_4c

    .line 242
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->getObserverAction()Lcom/codemao/creativecenter/callback/ObserverAction;

    move-result-object p1

    if-eqz p1, :cond_47

    const/4 p2, 0x1

    :cond_47
    if-eqz p2, :cond_4c

    .line 248
    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickDeleteScene()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method protected executeBindings()V
    .registers 19

    move-object/from16 v1, p0

    .line 105
    monitor-enter p0

    .line 106
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 107
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_135

    .line 113
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->mVm:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_d6

    if-eqz v0, :cond_1c

    .line 126
    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->isPad()Z

    move-result v10

    :cond_1c
    if-eqz v12, :cond_53

    if-eqz v10, :cond_3a

    const-wide/16 v8, 0x8

    or-long/2addr v2, v8

    const-wide/16 v8, 0x20

    or-long/2addr v2, v8

    const-wide/16 v8, 0x80

    or-long/2addr v2, v8

    const-wide/16 v8, 0x200

    or-long/2addr v2, v8

    const-wide/16 v8, 0x800

    or-long/2addr v2, v8

    const-wide/16 v8, 0x2000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x8000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x20000

    goto :goto_52

    :cond_3a
    const-wide/16 v8, 0x4

    or-long/2addr v2, v8

    const-wide/16 v8, 0x10

    or-long/2addr v2, v8

    const-wide/16 v8, 0x40

    or-long/2addr v2, v8

    const-wide/16 v8, 0x100

    or-long/2addr v2, v8

    const-wide/16 v8, 0x400

    or-long/2addr v2, v8

    const-wide/16 v8, 0x1000

    or-long/2addr v2, v8

    const-wide/16 v8, 0x4000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x10000

    :goto_52
    or-long/2addr v2, v8

    .line 153
    :cond_53
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v10, :cond_5e

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    goto :goto_60

    :cond_5e
    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    :goto_60
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    move v11, v0

    .line 155
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v10, :cond_70

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    goto :goto_72

    :cond_70
    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_72
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 157
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v10, :cond_81

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    goto :goto_83

    :cond_81
    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    :goto_83
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 159
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v10, :cond_92

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    goto :goto_94

    :cond_92
    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_38dp:I

    :goto_94
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v10, :cond_9d

    const/16 v12, 0x24

    goto :goto_9f

    :cond_9d
    const/16 v12, 0x20

    .line 163
    :goto_9f
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v10, :cond_aa

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    goto :goto_ac

    :cond_aa
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_ac
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 165
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v10, :cond_bb

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_140dp:I

    goto :goto_bd

    :cond_bb
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    :goto_bd
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v10, :cond_c6

    const/16 v10, 0x15

    goto :goto_c8

    :cond_c6
    const/16 v10, 0xf

    :goto_c8
    move/from16 v16, v12

    move v12, v0

    move v0, v10

    move/from16 v10, v16

    move/from16 v17, v9

    move v9, v8

    move v8, v11

    move v11, v14

    move/from16 v14, v17

    goto :goto_dc

    :cond_d6
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_dc
    and-long/2addr v6, v2

    cmp-long v15, v6, v4

    if-eqz v15, :cond_118

    .line 173
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 174
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {v6, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 175
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {v6, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 176
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {v6, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 177
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {v6, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 178
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {v6, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 179
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {v6, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 180
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {v6, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 181
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 182
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 183
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    :cond_118
    const-wide/16 v6, 0x2

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_134

    .line 188
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mCallback78:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mCallback77:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mCallback79:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_134
    return-void

    :catchall_135
    move-exception v0

    .line 108
    :try_start_136
    monitor-exit p0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 59
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 61
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 60
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

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 77
    sget v0, Lcom/codemao/creativecenter/BR;->vm:I

    if-ne v0, p1, :cond_b

    .line 78
    check-cast p2, Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->setVm(Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public setVm(Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V
    .registers 6

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->mVm:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 91
    sget p1, Lcom/codemao/creativecenter/BR;->vm:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 90
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
