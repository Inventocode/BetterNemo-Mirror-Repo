.class public Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;
.source "CreativeViewCmKeyboardBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback43:Landroid/view/View$OnClickListener;

.field private final mCallback44:Landroid/view/View$OnClickListener;

.field private final mCallback45:Landroid/view/View$OnClickListener;

.field private final mCallback46:Landroid/view/View$OnClickListener;

.field private final mCallback47:Landroid/view/View$OnClickListener;

.field private final mCallback48:Landroid/view/View$OnClickListener;

.field private final mCallback49:Landroid/view/View$OnClickListener;

.field private final mCallback50:Landroid/view/View$OnClickListener;

.field private final mCallback51:Landroid/view/View$OnClickListener;

.field private final mCallback52:Landroid/view/View$OnClickListener;

.field private final mCallback53:Landroid/view/View$OnClickListener;

.field private final mCallback54:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView12:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->keyboard_null:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 54
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 28

    move-object/from16 v15, p0

    const/16 v14, 0xa

    .line 57
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v13, 0xb

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x2

    aget-object v0, p3, v11

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v10, 0x3

    aget-object v0, p3, v10

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x4

    aget-object v0, p3, v9

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x5

    aget-object v0, p3, v3

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/4 v2, 0x6

    aget-object v0, p3, v2

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v0, p3, v1

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v20, p3, v0

    check-cast v20, Landroid/widget/TextView;

    const/16 v3, 0x9

    aget-object v21, p3, v3

    check-cast v21, Landroid/widget/TextView;

    const/16 v22, 0xd

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    invoke-direct/range {v0 .. v15}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 396
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    .line 71
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard7:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard8:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard9:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 82
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 84
    aget-object v3, p3, v0

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mboundView12:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 86
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 88
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback49:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback47:Landroid/view/View$OnClickListener;

    .line 90
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback45:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback43:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback52:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback50:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback48:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback46:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v1, v2, v0}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback54:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback44:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback53:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback51:Landroid/view/View$OnClickListener;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 4

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_a6

    goto/16 :goto_a4

    .line 327
    :pswitch_7  #0xc
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    if-eqz p2, :cond_a4

    .line 335
    invoke-interface {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickDel()V

    goto/16 :goto_a4

    .line 362
    :pswitch_14  #0xb
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    if-eqz p2, :cond_a4

    .line 371
    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto/16 :goto_a4

    .line 256
    :pswitch_21  #0xa
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    if-eqz p2, :cond_a4

    .line 264
    invoke-interface {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickMinus()V

    goto/16 :goto_a4

    .line 380
    :pswitch_2e  #0x9
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    if-eqz p2, :cond_a4

    const/16 p2, 0x9

    .line 389
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto/16 :goto_a4

    .line 273
    :pswitch_3d  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 p2, 0x0

    :goto_43
    if-eqz p2, :cond_a4

    const/16 p2, 0x8

    .line 282
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto/16 :goto_a4

    .line 184
    :pswitch_4c  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 p2, 0x0

    :goto_52
    if-eqz p2, :cond_a4

    const/4 p2, 0x7

    .line 193
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto :goto_a4

    .line 291
    :pswitch_59  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 p2, 0x0

    :goto_5f
    if-eqz p2, :cond_a4

    const/4 p2, 0x6

    .line 300
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto :goto_a4

    .line 202
    :pswitch_66  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 p2, 0x0

    :goto_6c
    if-eqz p2, :cond_a4

    const/4 p2, 0x5

    .line 211
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto :goto_a4

    .line 309
    :pswitch_73  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_78

    goto :goto_79

    :cond_78
    const/4 p2, 0x0

    :goto_79
    if-eqz p2, :cond_a4

    const/4 p2, 0x4

    .line 318
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto :goto_a4

    .line 220
    :pswitch_80  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_85

    goto :goto_86

    :cond_85
    const/4 p2, 0x0

    :goto_86
    if-eqz p2, :cond_a4

    const/4 p2, 0x3

    .line 229
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto :goto_a4

    .line 344
    :pswitch_8d  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_92

    goto :goto_93

    :cond_92
    const/4 p2, 0x0

    :goto_93
    if-eqz p2, :cond_a4

    const/4 p2, 0x2

    .line 353
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    goto :goto_a4

    .line 238
    :pswitch_9a  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_9f

    const/4 v0, 0x1

    :cond_9f
    if-eqz v0, :cond_a4

    .line 247
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onClickNum(I)V

    :cond_a4
    :goto_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9a  #00000001
        :pswitch_8d  #00000002
        :pswitch_80  #00000003
        :pswitch_73  #00000004
        :pswitch_66  #00000005
        :pswitch_59  #00000006
        :pswitch_4c  #00000007
        :pswitch_3d  #00000008
        :pswitch_2e  #00000009
        :pswitch_21  #0000000a
        :pswitch_14  #0000000b
        :pswitch_7  #0000000c
    .end packed-switch
.end method

.method protected executeBindings()V
    .registers 7

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 154
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    .line 155
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_64

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_63

    .line 161
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback52:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback53:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback43:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback44:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback45:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback46:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard5:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback47:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback48:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard7:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback49:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard8:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback50:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard9:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback51:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mboundView12:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mCallback54:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    .line 155
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 115
    monitor-exit p0

    return v0

    .line 117
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

    .line 105
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 106
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 108
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 107
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

.method public setListener(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V
    .registers 6

    .line 134
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->mListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->mDirtyFlags:J

    .line 137
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 138
    sget p1, Lcom/codemao/creativecenter/BR;->listener:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 139
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 137
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 124
    sget v0, Lcom/codemao/creativecenter/BR;->listener:I

    if-ne v0, p1, :cond_b

    .line 125
    check-cast p2, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;->setListener(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
