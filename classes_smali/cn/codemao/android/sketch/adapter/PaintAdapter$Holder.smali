.class public Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/adapter/PaintAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 165
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 167
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
