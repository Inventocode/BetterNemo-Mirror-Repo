.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialBottomBinding.java"


# instance fields
.field public final clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

.field public final emptyTips:Landroid/widget/TextView;

.field protected mIsPad:Ljava/lang/Boolean;

.field protected mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;Landroid/widget/TextView;)V
    .registers 6

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 34
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    .line 35
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method

.method public abstract setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
.end method
