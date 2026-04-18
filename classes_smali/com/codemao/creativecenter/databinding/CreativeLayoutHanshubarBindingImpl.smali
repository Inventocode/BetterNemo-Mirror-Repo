.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;
.source "CreativeLayoutHanshubarBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback36:Landroid/view/View$OnClickListener;

.field private final mCallback37:Landroid/view/View$OnClickListener;

.field private final mCallback38:Landroid/view/View$OnClickListener;

.field private final mCallback39:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 18

    move-object v9, p0

    const/4 v10, 0x3

    .line 36
    aget-object v0, p3, v10

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v11, 0x2

    aget-object v0, p3, v11

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v12, 0x1

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v13, 0x4

    aget-object v0, p3, v13

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    .line 397
    iput-wide v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    .line 43
    iget-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->ivHanshuConfrom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->ivQuit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->sideRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 48
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v13}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback39:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v11}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback37:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v10}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback38:Landroid/view/View$OnClickListener;

    .line 53
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v12}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v9, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback36:Landroid/view/View$OnClickListener;

    .line 54
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmCanRedo(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 118
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 119
    monitor-enter p0

    .line 120
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeVmCanRevert(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 109
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 110
    monitor-enter p0

    .line 111
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    .line 112
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeVmIsEditHanshuModel(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 127
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 128
    monitor-enter p0

    .line 129
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    .line 130
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_36

    const/4 p2, 0x3

    if-eq p1, p2, :cond_22

    const/4 p2, 0x4

    if-eq p1, p2, :cond_e

    goto :goto_5d

    .line 285
    :cond_e
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz p1, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    if-eqz p2, :cond_5d

    .line 297
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/HanshubarVM;->mCallback:Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    if-eqz v0, :cond_5d

    .line 303
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;->clickHanshuRestore()V

    goto :goto_5d

    .line 342
    :cond_22
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz p1, :cond_28

    const/4 p2, 0x1

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :goto_29
    if-eqz p2, :cond_5d

    .line 354
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/HanshubarVM;->mCallback:Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;

    if-eqz p1, :cond_30

    const/4 v0, 0x1

    :cond_30
    if-eqz v0, :cond_5d

    .line 360
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;->clickHanshuRevoke()V

    goto :goto_5d

    .line 313
    :cond_36
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz p1, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-eqz v2, :cond_5d

    .line 325
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/HanshubarVM;->mCallback:Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;

    if-eqz p1, :cond_44

    const/4 v0, 0x1

    :cond_44
    if-eqz v0, :cond_5d

    .line 332
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;->saveHanshu(Landroid/view/View;)V

    goto :goto_5d

    .line 370
    :cond_4a
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz p1, :cond_50

    const/4 v2, 0x1

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    if-eqz v2, :cond_5d

    .line 382
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/HanshubarVM;->mCallback:Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;

    if-eqz p1, :cond_58

    const/4 v0, 0x1

    :cond_58
    if-eqz v0, :cond_5d

    .line 389
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;->quiteHanshu(Landroid/view/View;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method protected executeBindings()V
    .registers 21

    move-object/from16 v1, p0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 141
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_113

    .line 149
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x1c

    const-wide/16 v10, 0x1a

    const-wide/16 v12, 0x19

    const/4 v14, 0x0

    cmp-long v16, v6, v4

    if-eqz v16, :cond_cd

    and-long v6, v2, v12

    cmp-long v16, v6, v4

    if-eqz v16, :cond_5a

    if-eqz v0, :cond_25

    .line 164
    iget-object v6, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRevert:Landroidx/databinding/ObservableField;

    goto :goto_26

    :cond_25
    const/4 v6, 0x0

    .line 166
    :goto_26
    invoke-virtual {v1, v14, v6}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_32

    .line 171
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    .line 176
    :goto_33
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v16, :cond_42

    if-eqz v6, :cond_3e

    const-wide/16 v16, 0x40

    goto :goto_40

    :cond_3e
    const-wide/16 v16, 0x20

    :goto_40
    or-long v2, v2, v16

    :cond_42
    if-eqz v6, :cond_4d

    .line 188
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_55

    :cond_4d
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_55
    invoke-static {v6, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_5b

    :cond_5a
    const/4 v6, 0x0

    :goto_5b
    and-long v16, v2, v10

    cmp-long v7, v16, v4

    if-eqz v7, :cond_96

    if-eqz v0, :cond_66

    .line 194
    iget-object v14, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRedo:Landroidx/databinding/ObservableField;

    goto :goto_67

    :cond_66
    const/4 v14, 0x0

    :goto_67
    const/4 v15, 0x1

    .line 196
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_74

    .line 201
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_75

    :cond_74
    const/4 v14, 0x0

    .line 206
    :goto_75
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v7, :cond_84

    if-eqz v14, :cond_80

    const-wide/16 v18, 0x100

    goto :goto_82

    :cond_80
    const-wide/16 v18, 0x80

    :goto_82
    or-long v2, v2, v18

    .line 218
    :cond_84
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v14, :cond_8f

    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_91

    :cond_8f
    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_91
    invoke-static {v7, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_97

    :cond_96
    const/4 v7, 0x0

    :goto_97
    and-long v14, v2, v8

    cmp-long v18, v14, v4

    if-eqz v18, :cond_ca

    if-eqz v0, :cond_a2

    .line 224
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    goto :goto_a3

    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    const/4 v14, 0x2

    .line 226
    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_b1

    .line 231
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Boolean;

    goto :goto_b2

    :cond_b1
    const/4 v15, 0x0

    .line 236
    :goto_b2
    invoke-static {v15}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v18, :cond_c0

    if-eqz v0, :cond_bd

    const-wide/16 v14, 0x400

    goto :goto_bf

    :cond_bd
    const-wide/16 v14, 0x200

    :goto_bf
    or-long/2addr v2, v14

    :cond_c0
    if-eqz v0, :cond_c4

    const/4 v14, 0x0

    goto :goto_c8

    :cond_c4
    const/16 v0, 0x8

    const/16 v14, 0x8

    :goto_c8
    move-object v15, v6

    goto :goto_d0

    :cond_ca
    move-object v15, v6

    const/4 v14, 0x0

    goto :goto_d0

    :cond_cd
    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_d0
    const-wide/16 v16, 0x10

    and-long v16, v2, v16

    cmp-long v0, v16, v4

    if-eqz v0, :cond_f4

    .line 255
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->back:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback38:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->ivHanshuConfrom:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback37:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->ivQuit:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback36:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->restore:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mCallback39:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f4
    and-long/2addr v12, v2

    cmp-long v0, v12, v4

    if-eqz v0, :cond_fe

    .line 263
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_fe
    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_108

    .line 268
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->restore:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_108
    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_112

    .line 273
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->sideRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_112
    return-void

    :catchall_113
    move-exception v0

    .line 142
    :try_start_114
    monitor-exit p0
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 60
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

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
    .registers 5

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_a
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->onChangeVmIsEditHanshuModel(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 102
    :cond_11
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->onChangeVmCanRedo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 100
    :cond_18
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->onChangeVmCanRevert(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 78
    sget v0, Lcom/codemao/creativecenter/BR;->vm:I

    if-ne v0, p1, :cond_b

    .line 79
    check-cast p2, Lcom/codemao/creativecenter/vm/HanshubarVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->setVm(Lcom/codemao/creativecenter/vm/HanshubarVM;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public setVm(Lcom/codemao/creativecenter/vm/HanshubarVM;)V
    .registers 6

    .line 88
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 92
    sget p1, Lcom/codemao/creativecenter/BR;->vm:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 91
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
