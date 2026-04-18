.class public final Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeviceInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final contentTv:Landroid/widget/TextView;

.field private final titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a07af

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const v0, 0x7f0a018c

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.content)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;->contentTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getContentTv()Landroid/widget/TextView;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;->contentTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTitleTv()Landroid/widget/TextView;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    return-object v0
.end method
