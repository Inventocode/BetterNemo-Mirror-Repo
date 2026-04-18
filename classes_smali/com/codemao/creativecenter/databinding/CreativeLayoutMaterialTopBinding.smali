.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialTopBinding.java"


# instance fields
.field public final include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

.field protected mIsPad:Ljava/lang/Boolean;

.field protected mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 34
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    return-void
.end method


# virtual methods
.method public abstract setBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V
.end method

.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method

.method public abstract setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
.end method
