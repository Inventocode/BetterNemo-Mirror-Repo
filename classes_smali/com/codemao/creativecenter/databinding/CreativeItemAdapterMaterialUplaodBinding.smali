.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterMaterialUplaodBinding.java"


# instance fields
.field public final ivAudio:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

.field public final tvNameUpload:Landroid/widget/TextView;

.field public final tvSizeUpload:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->ivAudio:Landroid/widget/ImageView;

    .line 39
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->tvNameUpload:Landroid/widget/TextView;

    .line 40
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->tvSizeUpload:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setData(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
.end method
