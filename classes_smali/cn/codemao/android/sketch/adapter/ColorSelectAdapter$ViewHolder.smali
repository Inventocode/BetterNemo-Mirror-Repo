.class Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private rlRoot:Landroid/widget/RelativeLayout;

.field private tvColorSelect:Landroid/widget/TextView;

.field private tvColorSelectWhite:Landroid/widget/TextView;

.field private tvColorType:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;Landroid/view/View;)V
    .registers 3

    .line 115
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->rlRoot:Landroid/widget/RelativeLayout;

    .line 117
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_color_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->tvColorSelect:Landroid/widget/TextView;

    .line 118
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_color_select_white:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->tvColorSelectWhite:Landroid/widget/TextView;

    .line 119
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_color_type:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->tvColorType:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 107
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->rlRoot:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 107
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->tvColorType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 107
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->tvColorSelectWhite:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 107
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->tvColorSelect:Landroid/widget/TextView;

    return-object p0
.end method
