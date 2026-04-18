.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemSceneEditBinding.java"


# instance fields
.field public final index:Landroid/widget/TextView;

.field protected mIsPad:Ljava/lang/Boolean;

.field public final rlRoot:Landroid/widget/FrameLayout;

.field public final vBg:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .registers 7

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 34
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->index:Landroid/widget/TextView;

    .line 35
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    .line 36
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->vBg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
