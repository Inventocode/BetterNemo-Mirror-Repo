.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterMaterialLeftBinding.java"


# instance fields
.field public final ivIcon:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativecenter/bean/MaterialLeftBean;

.field protected mIsFirst:Ljava/lang/Boolean;

.field protected mIsPadMode:Ljava/lang/Boolean;

.field public final spBottom:Landroid/widget/Space;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;)V
    .registers 7

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 42
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->spBottom:Landroid/widget/Space;

    .line 44
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setData(Lcom/codemao/creativecenter/bean/MaterialLeftBean;)V
.end method

.method public abstract setIsFirst(Ljava/lang/Boolean;)V
.end method

.method public abstract setIsPadMode(Ljava/lang/Boolean;)V
.end method
