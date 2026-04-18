.class public abstract Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeViewCreateRoleBinding.java"


# instance fields
.field public final clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final flBottom:Landroid/widget/FrameLayout;

.field public final flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivAddScreen:Landroid/widget/ImageView;

.field public final ivDelScreen:Landroid/widget/ImageView;

.field protected mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

.field public final rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

.field public final rvScreens:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvAddRole:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .registers 13

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 59
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flBottom:Landroid/widget/FrameLayout;

    .line 62
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivAddScreen:Landroid/widget/ImageView;

    .line 64
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    .line 65
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    .line 66
    iput-object p11, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    iput-object p12, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->tvAddRole:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
.end method
