.class public Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field colorView:Lcn/codemao/android/sketch/view/CircleColorView;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;Landroid/view/View;)V
    .registers 3

    .line 121
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 122
    check-cast p2, Lcn/codemao/android/sketch/view/CircleColorView;

    iput-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;->colorView:Lcn/codemao/android/sketch/view/CircleColorView;

    return-void
.end method
