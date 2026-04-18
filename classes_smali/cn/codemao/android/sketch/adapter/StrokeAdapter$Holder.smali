.class Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StrokeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/adapter/StrokeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# instance fields
.field iv_status:Landroid/view/View;

.field iv_type:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;->iv_type:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;->iv_status:Landroid/view/View;

    return-void
.end method
