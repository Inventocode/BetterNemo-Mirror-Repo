.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialRecorderBinding.java"


# instance fields
.field public final ivRecord:Landroid/widget/ImageView;

.field protected mIsPad:Ljava/lang/Boolean;

.field protected mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

.field public final tvRecord:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->ivRecord:Landroid/widget/ImageView;

    .line 52
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->tvRecord:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
