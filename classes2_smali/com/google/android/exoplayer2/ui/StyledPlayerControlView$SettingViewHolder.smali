.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingViewHolder"
.end annotation


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final mainTextView:Landroid/widget/TextView;

.field private final subTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public static synthetic $r8$lambda$ADkzLrF5UC-EMDSG997fZB1ITB0(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .registers 4

    .line 1863
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1864
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1865
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_f

    const/4 p1, 0x1

    .line 1867
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 1869
    :cond_f
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_main_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    .line 1870
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_sub_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    .line 1871
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    .line 1872
    new-instance p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 1857
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 1857
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 1857
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 3

    .line 1872
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V

    return-void
.end method
