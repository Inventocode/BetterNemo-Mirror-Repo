.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterMaterialTextBinding.java"


# instance fields
.field protected mIsPad:Ljava/lang/Boolean;

.field protected mName:Ljava/lang/String;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 30
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
